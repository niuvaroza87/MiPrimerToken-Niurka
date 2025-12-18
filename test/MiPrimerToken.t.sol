// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/MiPrimerToken.sol";

contract MiPrimerTokenTest is Test {
    MiPrimerToken public token;
    address public owner;
    address public user1;
    address public user2;

    function setUp() public {
        owner = address(this);
        user1 = address(0x1);
        user2 = address(0x2);
        token = new MiPrimerToken();
    }

    // ✅ Test 1: Verificar Suministro Inicial
    function test_InitialSupply() public {
        assertEq(token.totalSupply(), 1_000_000 * 10**18);
    }

    // ✅ Test 2: Verificar Balance del Deployer
    function test_DeployerBalance() public {
        assertEq(token.balanceOf(owner), 1_000_000 * 10**18);
    }

    // ✅ Test 3: Transferir Tokens Entre Cuentas
    function test_Transfer() public {
        token.transfer(user1, 100 * 10**18);
        assertEq(token.balanceOf(user1), 100 * 10**18);
        assertEq(token.balanceOf(owner), 999_900 * 10**18);
    }

    // ❌ Test 4: Probar Transferencia Inválida (CORREGIDO)
    function test_RevertTransferMoreThanBalance() public {
        vm.expectRevert();
        token.transfer(user1, 2_000_000 * 10**18);
    }

    // ✅ Test 5: Probar Approve y TransferFrom
    function test_ApproveAndTransferFrom() public {
        token.approve(user1, 500 * 10**18);
        
        vm.prank(user1);
        token.transferFrom(owner, user2, 500 * 10**18);
        
        assertEq(token.balanceOf(user2), 500 * 10**18);
    }

    // 🧪 Test 6: Fuzzing de Transferencias
    function testFuzz_Transfer(uint256 amount) public {
        vm.assume(amount <= token.balanceOf(owner));
        token.transfer(user1, amount);
        assertEq(token.balanceOf(user1), amount);
    }

    // ✅ Test 7: Solo el owner puede mintear
    function test_OnlyOwnerCanMint() public {
        token.mint(user1, 1000 * 10**18);
        assertEq(token.balanceOf(user1), 1000 * 10**18);
    }

    // ❌ Test 8: Usuario no owner no puede mintear (CORREGIDO)
    function test_RevertNonOwnerCannotMint() public {
        vm.expectRevert();
        vm.prank(user1);
        token.mint(user2, 1000 * 10**18);
    }

    // ✅ Test 9: Verificar nombre y símbolo del token
    function test_TokenMetadata() public {
        assertEq(token.name(), "Mi Primer Token");
        assertEq(token.symbol(), "MPT");
        assertEq(token.decimals(), 18);
    }
}