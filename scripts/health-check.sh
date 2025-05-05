#!/bin/bash
# Health check script for Ethereum Geth node

echo "Checking Geth node status on localhost:8545..."

RESPONSE=$(curl -s -X POST --data '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}' \
  -H "Content-Type: application/json" localhost:8545)

if echo "$RESPONSE" | grep -q "false"; then
  echo "✅ Node is fully synced."
else
  echo "⏳ Node is still syncing or not responding properly:"
  echo "$RESPONSE"
fi
