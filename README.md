# GPG-Smart-Contract-DAPP
GPG Decrypting-Encrypting Smart Contract Information 

GPG List of Executions (GPG)
 
 Installation
 ------------
 apt-get install gnupg

 List Keys
 --------
 gpg --list-secret-keys
 gpg --list-keys

 Generate keys:
 --------------
 gpg --full-generate-key
 Or
 gpg --gen-key

 Export/Import keys:
 -------------------
 gpg --export -a Trent > Trent_public.key
 Example = gpg --export -a Insert Name Here > Name_public.key
 gpg --import Trent_public.key
 gpg --export-secret-keys Trent > Trent-private-key.key
 gpg --import Trent-private-key.key

 Encrypt/Decrypt:
 ---------------
gpg -e-r "Trent" users.csv
gpg --always-trust -e -r "Trent" users.csv

gpg -d users.csv.gpg
gpg --batch -passphrase demo users.csv.gpg


Conclusion:The advantages of this strategy should not be taken lightly, since re-implementing such tools in Solidity is often unfeasible and almost always less secure, given that it will inevitably lack the maturity and stability that comes with decades of usage and refinement.
