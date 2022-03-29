function instantiateWithLoggerIpfs(
    address[] memory parties,
    bytes memory documentIpfsPath,
    bytes32 documentRootHash,
    uint8 documentLog2Size,
    bytes memory signatureIpfsPath,
    bytes32 signatureRootHash,
    uint8 signatureLog2Size)
public
    returns (uint256)
{
    // specifies two input drives containing the document and the signature
    DescartesInterface.Drive[] memory drives = new DescartesInterface.Drive[](2);
    drives[0] = DescartesInterface.Drive(
        0xa000000000000000,    // 3rd drive position: 1st is the root file-system (0x8000..), 2nd is the dapp-data file-system (0x9000..)
        documentLog2Size,      // driveLog2Size
        "",                    // directValue
        documentIpfsPath,      // loggerIpfsPath
        documentRootHash,      // loggerRootHash
        parties[0],            // provider
        false,                 // waitsProvider
        true                   // needsLogger
    );
    drives[1] = DescartesInterface.Drive(
        0xb000000000000000,    // 4th drive position
        signatureLog2Size,     // driveLog2Size
        "",                    // directValue
        signatureIpfsPath,     // loggerIpfsPath
        signatureRootHash,     // loggerRootHash
        parties[0],            // provider
        false,                 // waitsProvider
        true                   // needsLogger
    );
    // instantiates the computation
    return descartes.instantiate(
        finalTime,
        templateHash,
        outputPosition,
        outputLog2Size,
        roundDuration,
        parties,
        drives
    );
}

///Implementation
Open the GpgVerify.sol file in the gpg-verify/contracts
 directory and add the following code right after the instantiate method: