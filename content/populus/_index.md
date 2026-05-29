---
title: Populus
weight: 3
---

The Populus area specifies the product itself: how its components fit together, how the domain
model is structured, and how accounts and quotas are managed. It is the primary entry point
for product engineers joining the project.

## Documents

| Document | Audience |
|----------|----------|
| [Product component architecture](/populus/product-component-architecture) | Entry point — component map, data flows, API boundaries |
| [Domain concept](/populus/domain-concept) | Account model, pseudonym format, zone split |
| [Quota management](/populus/quota-management) | Rate limits and feature gates per subscription tier |

## Subscription tiers

Pleb · Civis · Family · Organisation — behaviorally specified with rate limits and feature
gates. See [Domain concept](/populus/domain-concept) and [Vision](/strategy/vision).

## Read next

Product engineers: [Identity architecture](/platform/identity-architecture) →
service spec ([Mastodon](/populus-services/mastodon))

Service implementers: [Product component architecture](/populus/product-component-architecture) →
[Mastodon](/populus-services/mastodon)
