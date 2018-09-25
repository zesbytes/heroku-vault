#!/bin/sh

set -e

export VAULT_ADDR="http://0.0.0.0:$PORT"
./vault-config.sh > vault-config.hcl
vault server -config=vault-config.hcl -log-level=info &
sleep 5
vault operator unseal $VAULT_UNSEAL_KEY1
vault operator unseal $VAULT_UNSEAL_KEY2
vault operator unseal $VAULT_UNSEAL_KEY3
wait
