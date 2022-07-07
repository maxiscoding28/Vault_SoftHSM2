# Vault_SoftHSM2_Demo

## Install and configure Vault and SoftHSM2 for demonstration purposes

This is a simple script that will install and configure a single [Vault](https://www.vaultproject.io/) instance as well as [SoftHSM2](https://github.com/opendnssec/SoftHSMv2) on an [Ubuntu](https://ubuntu.com/) VM.

A successful execution of the script should provide you with a [Vault](https://www.vaultproject.io/) instance that auto-unseal using keys stored in a [SoftHSM2](https://github.com/opendnssec/SoftHSMv2) slot.

# Disclaimer
Please do not use this for production employments. This is for lab/testing/demonstration purposes only.

# Prerequisites
- An x86_64 Ubuntu VM (VirtualBox, AWS, gcloud, etc) - Testing was done on Jammy Jellyfish
- Bash shell
- [Vault Enterprise License](https://www.vaultproject.io/docs/enterprise/license) (HSM support is only available for Vault Enterprise)

# Usage
## Clone the repo
```
$ git clone https://github.com/kwagga/Vault_SoftHSM2.git
$ cd Vault_SoftHSM2
```
## Insert Enterprise license
- Populate `vault.hclic` with your license.

## Make `setup.sh` executable and execute
```
$ chmod +x setup.sh
$ ./setup.sh
```
## Post install
Vault Recovery keys and root token will be available in `~/unseal.keys`

# Useful commands

See `demo_commands.md` for more information.
