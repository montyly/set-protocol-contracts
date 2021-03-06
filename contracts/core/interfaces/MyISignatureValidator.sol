/*
    Copyright 2018 Set Labs Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

pragma solidity 0.4.25;

/**
 * @title MyISignatureValidator
 * @author Set Protocol
 *
 * The MyISignatureValidator interface provides a light-weight, structured way to interact with the
 * Signature Validator contract from another contract.
 * Named MyISignatureValidator instead of ISignatureValidator to avoid collision with the 0x Exchange interface
 */
interface MyISignatureValidator {

    /* ============ External Functions ============ */

    /**
     * Validate order signature
     *
     * @param  _orderHash       Hash of issuance order
     * @param  _signerAddress   Address of Issuance Order signer
     * @param  _signature       Signature in bytes
     */
    function validateSignature(
        bytes32 _orderHash,
        address _signerAddress,
        bytes _signature
    )
        external
        pure;
}
