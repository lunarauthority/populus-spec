---
title: Platform
weight: 2
---

The platform area covers the infrastructure that runs every Populus service: cluster topology,
GitOps workflow, identity and access management, secrets, and day-to-day operations. It is the
primary entry point for infrastructure engineers and operators.

## Documents

| Document | Audience |
|----------|----------|
| [Infrastructure concept](/platform/infrastructure-concept) | Entry point — two-zone topology, network, DNS |
| [Platform architecture](/platform/platform) | ArgoCD project taxonomy, namespace layout |
| [Cluster GitOps](/platform/cluster-gitops) | Repo structure, sync policy, promotion flow |
| [Identity architecture](/platform/identity-architecture) | Kanidm realms, OIDC clients, trust boundaries |
| [Identity administration](/platform/identity-administration) | Day-to-day account and group management |
| [WIP workflow](/platform/wip-workflow) | Work-in-progress cluster workflow |
| [Secrets backup](/platform/secrets-backup) | Sealed Secrets backup and recovery |
| [Temporary dev cluster](/platform/temporary-dev-cluster) | Hetzner kind cluster — transitional until Syself cluster |

## Read next

Infrastructure engineers: [Identity architecture](/platform/identity-architecture) →
[Secrets backup](/platform/secrets-backup)

Operators: [Identity administration](/platform/identity-administration) →
[WIP workflow](/platform/wip-workflow)
