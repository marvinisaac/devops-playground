# Monolith

## Description
A single-node server which will host everything in it. Including (but not limited to):
- API gateway (KrakenD)
- cache (Redis)
- container manager (Portainer using Docker + Docker Compose)
- database (MariaDB)
- message queue (RabbitMQ)
- scheduler (Ofelia)
- server tunnel (Cloudflare Tunnel)
- a host of projects

The idea is to minimize cost but maximize the number of self-hosted applications.

## Server Specifications
- 2 CPUs
- 2GB RAM
- 60GB Disk
- Ubuntu 20.04 LTS
- Cloudflare cost: $15/mo

## Details
- The main API gateway will handle server-only requests such as:
    - healthcheck
    - Portainer GUI
- Portainer will handle deployment and update of projects. Every minute, each stack is checked in GitHub and updated as needed.
- Ofelia will handle scheduling of tasks such as:
    - database backup
    - project tasks
    - [ ] server update and reboot
- Cloudflare Tunnel will allow external requests to be received and utilize the security offered by Cloudflare.
- Any services that is hosted under a different domain name must have its own API gateway because the Community Edition of KrakenD can not distinguish between different domains. All endpoints will be accessible from all domains.
    - An endpoint `api.marvinisaac.com/music/stats` will also be accessible (and return the same data) when accessed from `api.halohalolabs.com/music/stats`
    - The Cloudflare Tunnel will do the routing to different API gateways based on the request's domain.

## For Clarification / Experimentation
- Resource min / max limits
