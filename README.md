<<<<<<< HEAD
# Infraestructura para nodos de rollup seguros y escalables en AWS

Este repositorio es un template para desplegar infraestructura reproducible para nodos blockchain tipo rollup (como Optimism, zkSync, Celestia Light Nodes) usando Terraform, Kubernetes, Helm y herramientas de seguridad cloud-native.

## Contenido

```
infra-rollup-secure/
├── terraform/                  # Infraestructura base en AWS
│   ├── main.tf                 # Recursos principales: VPC, EKS, IAM
│   ├── variables.tf            # Variables reutilizables
│   └── modules/                # Módulos reusables (eks, s3, iam)
├── helm/                       # Charts para nodos rollup
│   └── geth/                   # Ejemplo: nodo Ethereum Geth
├── scripts/                    # Utilidades y tareas de mantenimiento
│   └── health-check.sh         # Verifica estado del nodo RPC
├── observability/              # Dashboards y alertas
│   └── grafana-dashboards/     # Dashboards para Prometheus+Grafana
├── README.md                   # Instrucciones y documentación
└── .github/workflows/          # CI para lint, terraform fmt, checkov
```

## Características

- Deploy automatizado en AWS con Terraform (VPC, EKS, IAM)
- Helm charts personalizables para nodos (Geth, zkNode, Celestia)
- Monitoreo con Prometheus y dashboards de Grafana
- Escaneo de seguridad con Checkov y trivy
- Buenas prácticas: RBAC, namespace isolation, IAM roles por pod
- Soporte para integración con Cloudflare (WAF, DNS) y alerta vía Slack

## Cómo empezar

```bash
# Inicializa infraestructura
cd terraform
terraform init && terraform apply

# Despliega Helm chart para nodo
cd ../helm/geth
helm install geth .

# Ejecuta chequeo de salud
bash ../../scripts/health-check.sh
```

## Observabilidad
- Dashboards listos para nodos Ethereum / Celestia
- Alertas configurables por Prometheus rules y webhook

## Seguridad
- IAM con principio de menor privilegio
- Restricciones de red entre servicios
- Escaneo continuo con Checkov en CI/CD
- Kubernetes hardened: no privileged pods, contextos restringidos

## En desarrollo
- Integración con zkNode y Celestia light node
- Módulo de backup automatizado
- Validación de cambios con OPA (Open Policy Agent)

---

Este repositorio está diseñado para mostrar cómo aplicar las mejores prácticas de DevSecOps e infraestructura en el contexto de Web3 y escalar nodos blockchain de forma segura.

> Pull requests y sugerencias son bienvenidas.
=======
# infra-rollup-secure
>>>>>>> 69e185c9106b48a863eea12159dd040ecaa355d2
