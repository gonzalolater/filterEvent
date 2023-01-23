// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Contract {
	function filterEven(uint[] calldata x) external pure returns(uint[] memory) {
		uint n;
		for(uint i = 0; i < x.length; i++) {
			if(x[i] % 2 == 0) n++;
		}

		uint[] memory filtered = new uint[](n);
		uint filled = 0;
		for(uint i = 0; i < x.length; i++) {
			if(x[i] % 2 == 0) {
				filtered[filled] = x[i];
				filled++;
			}
		}

		return filtered;
	}
}
