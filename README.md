# 🛠️ Infra Rollup Secure

Infrastructure template for deploying secure and observable Ethereum-based rollup nodes (e.g. Geth, zkSync, Celestia) using **Terraform**, **Kubernetes**, **Helm**, and **Grafana** on **AWS**.

> Designed for DevSecOps portfolios, Web3 infrastructure engineers, and blockchain scalability projects.

---

## 🔍 Project Structure

```
infra-rollup-secure/
├── terraform/                # Base AWS infra (VPC, EKS)
├── helm/geth/                # Helm chart to deploy Geth node
├── scripts/                  # Health checks and ops utilities
├── observability/            # Grafana dashboards for node metrics
└── .github/workflows/        # (Optional) CI/CD integration
```

---

## 🚀 Features

- Infrastructure as Code with **Terraform**
- Helm chart to deploy a **Geth full node**
- Kubernetes **RBAC**, isolated namespaces, resource limits
- Optional **persistent volume** for blockchain data
- Prometheus-ready metrics + Grafana dashboard
- Shell script to check node sync status via `eth_syncing`

---

## ⚙️ Prerequisites

- AWS CLI + credentials configured
- Terraform ≥ 1.3
- Helm ≥ 3
- kubectl connected to an EKS cluster

---

## 🧪 Getting Started

### 1. Provision Infrastructure

```bash
cd terraform
terraform init
terraform apply -auto-approve
```

> This will deploy the EKS cluster and supporting AWS resources.

### 2. Deploy the Geth Node

```bash
cd ../helm/geth
helm install geth . --values values.yaml
```

---

## 🩺 Check Node Status

```bash
bash ../scripts/health-check.sh
```

Expected output:
```
✅ Node is fully synced.
```

---

## 📊 Observability

The Grafana dashboard includes:

- Block sync progress
- Peer count
- Memory/CPU usage
- JSON-RPC health

Import the example JSON from `observability/grafana-dashboards/` into your Grafana instance.

---

## 🛡️ Security Best Practices

- IAM permissions based on least privilege
- No privileged pods / no hostPath mounts
- PodSecurityContext set to non-root
- Volume access set to `ReadWriteOnce`
- Supports future OPA/Checkov integration

---