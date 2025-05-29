# Run Vault bootstrap script (secrets + mounts)
bootstrap-dev:
	@chmod +x ./vault/vault-init.sh
	@./vault/vault-init.sh

# Start all containers (build + detached mode)
up:
	docker compose -f docker-compose.dev.yml --env-file .env up --build -d

# Stop and remove all containers
down:
	docker compose -f docker-compose.dev.yml down

# Stop and remove containers + volumes
down-all:
	docker compose -f docker-compose.dev.yml down -v

# View logs of all services
logs:
	docker compose -f docker-compose.dev.yml logs -f --tail=100

# Restart everything cleanly (fresh dev session)
restart: down-all up
