# Virtual Machine Details

## Core

### Specifications
- 1 CPU
- 1GB RAM
- Bridged adapter

### Containers
- Database (MariaDB 10.6)
- Scheduler (Ofelia, will run hourly backup of database)

---

## Apps

### Specifications
- 1 CPU
- 2GB RAM
- Bridged adapter

### Containers
- API Gateway (KrakenD)
- Scheduler (Ofelia, will run scheduled tasks)
- Tunnel (Cloudflare Tunnel)

- Projects
    - Marvin's Music Stats
