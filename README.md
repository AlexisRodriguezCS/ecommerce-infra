# 🏗️ E-Commerce Infrastructure

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
- **Secret Management**: `.env` templating and Vault integration (WIP)

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

| Repository                                                                                               | Description                              |
|----------------------------------------------------------------------------------------------------------|------------------------------------------|
| [`ecommerce-auth-service`](https://github.com/AlexisRodriguezCS/ecommerce-auth-service)                 | JWT-based authentication and RBAC        |
| [`ecommerce-product-service`](https://github.com/AlexisRodriguezCS/ecommerce-product-service)           | Product catalog management               |
| [`ecommerce-inventory-service`](https://github.com/AlexisRodriguezCS/ecommerce-inventory-service)       | Inventory tracking and stock updates     |
| [`ecommerce-order-service`](https://github.com/AlexisRodriguezCS/ecommerce-order-service)               | Order creation and processing            |
| [`ecommerce-payment-service`](https://github.com/AlexisRodriguezCS/ecommerce-payment-service)           | Payment orchestration and workflows      |
| [`ecommerce-notification-service`](https://github.com/AlexisRodriguezCS/ecommerce-notification-service) | Email and SMS notifications              |
| [`ecommerce-api-gateway`](https://github.com/AlexisRodriguezCS/ecommerce-api-gateway)                   | Gateway layer with auth and throttling   |
| [`ecommerce-discovery-server`](https://github.com/AlexisRodriguezCS/ecommerce-discovery-server)         | Eureka Discovery Server                  |
| [`ecommerce-config-server`](https://github.com/AlexisRodriguezCS/ecommerce-config-server)               | Spring Cloud Config Server               |
| [`ecommerce-config-repo`](https://github.com/AlexisRodriguezCS/ecommerce-config-repo)                   | Centralized config files and secrets     |
| **This Repo**                                                                                             | Infrastructure: Docker, ELK, CI/CD, docs |

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

## 🛡️ Security & Secret Infrastructure

Secret values are managed in the [`ecommerce-config-repo`](https://github.com/AlexisRodriguezCS/ecommerce-config-repo), but this repository handles **how** secrets are securely injected into services.

Planned Upgrades:
- 🔐 Deploy and integrate **HashiCorp Vault** via Docker
- 🐳 Use **Docker Secrets** for secure runtime injection
- 🧪 Template `.env` files for local development
- 🔒 Secure CI/CD pipelines using **GitHub Actions Secrets**

---

## 🙌 Contributions

This is a personal project designed with production-quality engineering practices. Contributions are welcome if aligned with the overall vision and architecture.

---

## 📬 Contact

Maintained by [Alexis Rodriguez](https://github.com/AlexisRodriguezCS)
