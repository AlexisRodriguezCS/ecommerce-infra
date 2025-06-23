#!/bin/bash

# Wait until Vault is ready
until vault status > /dev/null 2>&1; do
  sleep 0.5
done

# Enable kv-v2 at path 'secret' if not already enabled
if ! vault secrets list -format=json | jq -e 'has("secret/")' > /dev/null; then
  vault secrets enable -path=secret kv-v2
fi

# Load secrets from JSON
vault kv put secret/auth-service @/vault/secrets/auth-service/dev.json
vault kv put secret/user-service @/vault/secrets/user-service/dev.json
