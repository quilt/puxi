// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AuthorizeProxy {
	mapping (address => uint256) public nonce;
	address public signer;
	bool public success;

	function call(uint256 _gas, address payable _addr, uint256 _nonce, bytes memory _data, uint256 _v, uint256 _r, uint256 _s) external payable {
		// address _signer;
		// bool _success;
		bytes32 _commit = keccak256(abi.encodePacked(_gas, _addr, _nonce, _data));

		assembly {
			let _signer := auth(_commit, _v, _r, _s)
			if eq(_nonce, sload(_signer)) {
				sstore(_signer, add(_nonce, 1))
				let _success := authcall(_gas, _addr, callvalue(), 0, add(_data, 0x20), mload(_data), 0, 0)
				sstore(0, _signer)
				sstore(1, _success)
			}

		}

		// signer = _signer;
		// success = _success;
	}
}
