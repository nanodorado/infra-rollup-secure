#!/bin/bash
# Health check script for RPC node
curl -sf http://localhost:8545 || echo 'Node not responding'