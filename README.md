# 🏗️ Infrastructure – E-commerce Backend

This repository contains the foundational infrastructure and shared tooling for a production-grade **microservices-based e-commerce backend** built with Java Spring Boot. It follows best practices in architecture, DevOps, and observability to enable scalability and maintainability.

> ⚠️ **Note:** This project is under active development and evolving to meet real-world engineering standards.

---

## 📦 What's Included

### 🔧 Development & Deployment Tooling

- **Docker Compose**: Local development environment for all services
- **PostgreSQL / Redis /RabbitMQ**: Core infrastructure services
- **Spring Cloud Config Server**: Centralized and externalized configuration
- **Service Discovery (Eureka)**: Dynamic service registry
- **API Gateway**: Powered by Spring Cloud Gateway with JWT validation and rate limiting
- **Secret Management**: `.env` templating and Vault integration

### 🚀 CI/CD Tooling

- Pre-built **GitHub Actions** workflows for:
  - Build and test pipelines
  - Docker image publishing
  - Integration testing with Testcontainers
  - Code linting and formatting

### 📊 Observability Stack

- **ELK Stack**: Centralized logging using Elasticsearch, Logstash, and Kibana
- **Custom log configurations** in each microservice for consistency and traceability

---

## 📂 Project Structure

| Repository                                                                                              | Description                              |
|---------------------------------------------------------------------------------------------------------|------------------------------------------|
| [`ecommerce-auth-service`](https://github.com/AlexisRodriguezCS/ecommerce-auth-service)                 | JWT-based authentication and RBAC        |
| [`ecommerce-user-service`](https://github.com/AlexisRodriguezCS/ecommerce-user-service)                 | User profile management and account details        |
| [`ecommerce-product-service`](https://github.com/AlexisRodriguezCS/ecommerce-product-service)           | Product catalog management               |
| [`ecommerce-inventory-service`](https://github.com/AlexisRodriguezCS/ecommerce-inventory-service)       | Inventory tracking and stock updates     |
| [`ecommerce-order-service`](https://github.com/AlexisRodriguezCS/ecommerce-order-service)               | Order creation and processing            |
| [`ecommerce-payment-service`](https://github.com/AlexisRodriguezCS/ecommerce-payment-service)           | Payment orchestration and workflows      |
| [`ecommerce-notification-service`](https://github.com/AlexisRodriguezCS/ecommerce-notification-service) | Email and SMS notifications              |
| [`ecommerce-api-gateway`](https://github.com/AlexisRodriguezCS/ecommerce-api-gateway)                   | Gateway layer with auth and throttling   |
| [`ecommerce-discovery-server`](https://github.com/AlexisRodriguezCS/ecommerce-discovery-server)         | Eureka Discovery Server                  |
| [`ecommerce-config-server`](https://github.com/AlexisRodriguezCS/ecommerce-config-server)               | Spring Cloud Config Server               |
| [`ecommerce-config-repo`](https://github.com/AlexisRodriguezCS/ecommerce-config-repo)                   | Centralized config files and secrets     |
| **This Repo**                                                                                           | Infrastructure: Docker, ELK, CI/CD, docs |

---

## 📫 Postman Collections

Postman request collections and test suites are available in `/postman`. You can import these into Postman to test microservices during development.

---

## 🧪 Testing Strategy

Each microservice is built with a layered testing strategy:

- ✅ **Unit tests** for business logic
- ✅ **Integration tests** using **Testcontainers** for real dependencies (DB, MQ, etc.)
- 🔄 **End-to-end smoke tests** using Postman & Newman (WIP)

---

## 🗂️ Documentation

All system documentation is maintained under `/docs`, including:

- 🧱 System Architecture (UML Diagrams)
- 🧪 Local Dev Setup Guide
- 🚀 CI/CD Pipeline Reference
- 🔐 Secret & Config Strategy

---

## 🛣️ Roadmap

- [ ] Docker Compose for full dev environment
- [ ] CI/CD GitHub Actions templates
- [ ] ELK logging infrastructure
- [ ] Rate limiting via Redis token buckets
- [ ] Vault-based secret management

---

## 🔐 Secrets Management

This project uses a secure, real-world approach to secrets management for both local development and production environments.

### 💻 Local Development

Secrets are managed using:

- **`.env` files** — used by infrastructure like PostgreSQL and Redis
- **HashiCorp Vault** (dev mode via Docker) — used by application services (e.g., `auth-service`, `user-service`)
- **Docker Compose** — coordinates everything and runs the Vault bootstrap process
- **GitHub Actions** uses **Encrypted Secrets** to securely pass credentials during CI/CD workflows.
> ✅ **Note:** Infrastructure (e.g., databases) read credentials from `.env`, while services read their secrets from Vault. Also, `.env` and `vault/secrets/*.json` are excluded from version control via `.gitignore` to prevent accidental leakage.

### ⚙️ Vault Secret Initialization

The Vault container runs a custom `vault-init.sh` script to initialize secrets for each service.

Example `vault/secrets/auth-service/dev.json.example`
```json
{
  "AUTH_DB" : "your_db_here",
  "AUTH_DB_USERNAME": "your_username_here",
  "AUTH_DB_PASSWORD": "your_password_here"
}
```

### 📘 **How to use it:**

1. Copy and fill in your values into:
```bash
vault/secrets/auth-service/dev.json.example
```

2. Ensure your `.env` file includes the corresponding values for the Vault:
```env
VAULT_DEV_ROOT_TOKEN_ID=root
VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200
VAULT_ADDR=http://127.0.0.1:8200
```

3. Run using makefile:
```bash
make up
```


### ☁️ Production (Planned)

---

## 🙌 Contributions

This is a personal project designed with production-quality engineering practices. Contributions are welcome if aligned with the overall vision and architecture.

---

## 📬 Contact

Maintained by [Alexis Rodriguez](https://github.com/AlexisRodriguezCS)
