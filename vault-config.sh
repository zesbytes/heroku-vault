#!/bin/sh
cat << EOF
disable_mlock: $DISABLE_MLOCK

storage "postgresql" {
  connection_url = "$POSTGRESQL_CONNECTION_URL"
}

ui = true

listener "tcp" {
  address     = "0.0.0.0:$PORT"
  tls_disable = 1
}
EOF
