


# Open 2 terminal sessions to the Vault server
# Run `journalctl -fu vault` in one session
# Run `sudo systemctl stop vault` and `sudo systemctl start vault` in the other
# Show unsealing in log
# Change HSM slot pin
    ```
    $ HSM_LIB=$(grep -F 'lib' /etc/vault.d/vault.hcl | cut -d'"' -f2)
    $ sudo pkcs11-tool --module ${HSM_LIB} --login --login-type user --change-pin
    $ sudo systemctl stop vault.service
    $ sudo systemctl start vault.service
    ```
# Time to break things
    ```
    sudo chown -R root:softhsm /var/lib/softhsm/tokens/
    sudo systemctl stop vault.service
    sudo systemctl start vault.service
    ```
# Increase tracing level in SoftHSM2 (/etc/softhsm/softhsm2.conf) `sudo vim /etc/softhsm/softhsm2.conf`
# Restart vault with `sudo systemctl stop vault.service` and `sudo systemctl start vault.service` check operation log for additional debugging.

    sudo chown -R vault:softhsm /var/lib/softhsm/tokens
    sudo systemctl stop vault.service
    sudo systemctl start vault.service
    ```
# List supported SoftHSMv2 Mechs `sudo pkcs11-tool --module ${HSM_LIB} -M`



