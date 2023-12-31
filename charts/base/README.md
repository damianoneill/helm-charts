# base

![Version: 0.1.11](https://img.shields.io/badge/Version-0.1.11-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A subchart for REST based Microservices

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| damianoneill |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity rules for the pod. |
| autoscaling | object | `{"enabled":true,"maxReplicas":5,"minReplicas":1,"targetCPUUtilizationPercentage":80,"targetMemoryUtilizationPercentage":80}` | Autoscaling configuration. |
| autoscaling.enabled | bool | `true` | Enable or disable autoscaling. |
| autoscaling.minReplicas | int | `1` | Minimum and maximum replicas. |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage. |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | Target memory utilization percentage. |
| configMaps | object | `{}` | ConfigMaps to mount into the pod. |
| fullnameOverride | string | `""` |  |
| image | object | `{"pullPolicy":"Always","repository":"nginxinc/nginx-unprivileged","tag":"alpine3.18"}` | Docker image details. |
| image.pullPolicy | string | `"Always"` | Image pull policy. |
| image.repository | string | `"nginxinc/nginx-unprivileged"` | Docker image repository. |
| image.tag | string | `"alpine3.18"` | Image tag. |
| imagePullSecrets | list | `[]` | Secrets for pulling images from private repositories. |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Configuration for Ingress resources. |
| ingress.annotations | object | `{}` | Annotations for Ingress. |
| ingress.className | string | `""` | Ingress class. |
| ingress.enabled | bool | `false` | Enable or disable Ingress. |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | Ingress hosts and paths. |
| ingress.tls | list | `[]` | TLS configuration for Ingress. |
| livenessProbe | object | `{}` | Liveness probe configuration. |
| nameOverride | string | `""` | Overrides for chart and deployment names. |
| nodeSelector | object | `{}` | Node selector for the pod. |
| podAnnotations | object | `{}` | Annotations for pods. |
| podLabels | object | `{}` | Labels for pods. |
| podSecurityContext | object | `{}` | Security context for the entire pod. |
| ports | list | `[{"containerPort":8080,"name":"http","protocol":"TCP"}]` | List of ports to expose on the pod. |
| ports[0] | object | `{"containerPort":8080,"name":"http","protocol":"TCP"}` | Port for the HTTP server, likely same as service port defined above. |
| readinessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | Readiness probe configuration. |
| readinessProbe.httpGet.path | string | `"/"` | Path for the readiness probe. |
| readinessProbe.httpGet.port | string | `"http"` | Port for the readiness probe. |
| replicaCount | int | `1` | Number of replicas for the deployment. |
| resources | object | `{"limits":{"cpu":"100m","memory":"128Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource requests and limits for the pod. |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsGroup":101,"runAsNonRoot":true,"runAsUser":101}` | Security context for containers. |
| securityContext.allowPrivilegeEscalation | bool | `false` | Disallow privilege escalation. |
| securityContext.capabilities | object | `{"drop":["ALL"]}` | Drop capabilities for the container. |
| securityContext.readOnlyRootFilesystem | bool | `true` | Mount the root filesystem as read-only. |
| securityContext.runAsGroup | int | `101` | Group ID for the container (nginx group is 101). |
| securityContext.runAsNonRoot | bool | `true` | Run the container as a non-root user. |
| securityContext.runAsUser | int | `101` | User ID for the container (nginx user is 101). |
| service | object | `{"port":8080,"type":"ClusterIP"}` | Configuration for the Kubernetes service. |
| service.port | int | `8080` | Service port. |
| service.type | string | `"ClusterIP"` | Service type (e.g., ClusterIP). |
| serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"name":""}` | Configuration for the service account. |
| serviceAccount.annotations | object | `{}` | Annotations for the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount API credentials for the service account. |
| serviceAccount.create | bool | `true` | Whether to create a service account. |
| serviceAccount.name | string | `""` | Name of the service account to use. |
| startupProbe | object | `{}` | Startup probe configuration. |
| tolerations | list | `[]` | Tolerations for the pod. |
| volumeMounts | list | `[{"mountPath":"/home/nginx","name":"nginx-config"},{"mountPath":"/var/cache/nginx","name":"nginx-cache"},{"mountPath":"/tmp","name":"tmp"}]` | Additional volume mounts for the Deployment. |
| volumes | list | `[{"emptyDir":{},"name":"nginx-config"},{"emptyDir":{},"name":"nginx-cache"},{"emptyDir":{},"name":"tmp"}]` | Additional volumes for the Deployment. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
