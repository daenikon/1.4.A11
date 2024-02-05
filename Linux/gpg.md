gpg keys are located at `/root/.gnupg/`

to get public key do `gpg --list-keys` and it's also located at `~/mypublickey.gpg`


# Log
## Generate key
1. `gpg --full-gen-key` with `root` in `/root/` directory.
    1. `RSA and RSA` (default)
    2. 3072 bits long
    3. 0 --> key does not expire
    4. Real Name: "Den Kondratiuk"
    5. Email: "dkondratiuk06@gmail"
    6. Comment: "daenikon"
    7. **Password** (Note at BitWarden)
2. `gpg --output /home/neo/publickey.gpg --armor --export 30154A974C865C248A91209C7DAC306FB539ECB6`
    - created `publickey.gpg` file at `~`
3. `gpg --homedir=/etc/portage/gnupg --import publickey.gpg`
4. `gpg --homedir=/etc/portage/gnupg --edit-key 30154A974C865C248A91209C7DAC306FB539ECB6`
    - trusted and signed the key with password from `/etc/portage/gnupg/pass`
5. `trust` --> `4`
6. `gpg --homedir=/etc/portage/gnupg --check-trustdb`
