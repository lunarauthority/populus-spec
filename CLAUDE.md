# CLAUDE.md

This is the `populus-spec` repository — the authoritative specification site for the Populus
platform, served at `https://spec.infra.populus.social`.

## What this repo contains

Hugo documentation site (Hextra theme) covering five areas:

| Area | Path | Audience |
|------|------|----------|
| Strategy | `content/strategy/` | Executive, investor, regulator |
| Platform | `content/platform/` | Infrastructure engineer, operator |
| Populus | `content/populus/` | Product engineer |
| Services | `content/populus-services/` | Service implementer |
| Company | `content/company/` | Operator, internal |

## Theme

Hextra, pinned as a git submodule at `themes/hextra/`. Always check out with
`git clone --recurse-submodules`.

## Build

```sh
hugo server          # local preview
hugo --minify --gc   # production build → public/
```

Requires Hugo extended ≥ 0.123.0.

## Docker

Multi-stage build: Hugo extended → `httpd:2.4-alpine`. The CI workflow builds and
pushes to `registry2.initiativeeconomics.dev:5443/populus-spec` on every push to main.

## Deployment (target)

ArgoCD app in the `populus` namespace. Access is gated by oauth2-proxy using Kanidm
as the OIDC provider (client registered in the `identities-0` Kanidm instance).
Ingress: `spec.infra.populus.social`.

## Content migration

Source documents live in `infra/docs/specification/` and `infra/populus.social/docs/references/`.
Migrate one document at a time: convert to Hugo Markdown frontmatter, place in the correct
area subdirectory, update cross-reference links.

## Commit style

Conventional commits: `docs(area): description`. Example: `docs(platform): migrate infrastructure-concept`.
