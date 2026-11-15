# Home-server Docker stacks

Each subdirectory is a Compose project. Secrets live in a local `.env` (gitignored).

## Sure (finance)

```bash
cd ~/DotFiles/docker/sure
cp .env.example .env   # or reuse your existing .env
# set SECRET_KEY_BASE + POSTGRES_PASSWORD
docker compose up -d
```

- UI: http://localhost:3000  
- Backups: always on → `~/backups/<version>/<timestamp>-{manual|scheduled}/`  
- Manual: `sure-backup` or `docker compose run --rm backup create`

Aliases: `sure-up`, `sure-down`, `sure-logs`, `sure-backup`.

## Uptime Kuma (status)

```bash
cd ~/DotFiles/docker/uptime-kuma
cp .env.example .env
docker compose up -d
```

- UI: http://localhost:3001 (or `http://SERVER-IP:3001` from the Mac)

## Adding another service

1. `mkdir ~/DotFiles/docker/<name>`
2. Add `compose.yml` + `.env.example`
3. Copy to `.env`, then `docker compose up -d`
