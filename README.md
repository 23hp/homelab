# Set Up Your HomeLab

## Set Up Bitwarden CLI
Find the `API Key` at Bitwarden `settings/security/security-keys`
```bash
    brew install bitwarden-cli
    export BW_CLIENTID="your-client-id"
    export BW_CLIENTSECRET="your-client-secret"
    # use custom server
    bw config server https://vault.bitwarden.eu
    bw login --apikey
```