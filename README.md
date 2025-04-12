# 🏗️ E-Commerce Infrastructure

This repository contains the foundational infrastructure and shared resources for a production-grade **microservices-based e-commerce backend** built with Java Spring Boot. The system follows best practices in software architecture, DevOps, and observability.

> ⚠️ **Note:** This project is a work in progress and is being actively developed to follow real-world engineering principles, scalability, and maintainability.

---

## 📦 What’s Included

### 🔧 Dev & Deployment Tooling
- **Docker Compose**: Spin up full microservice environment locally.
- **PostgreSQL / Redis / RabbitMQ**: Core backend services.
- **Spring Cloud Config Server**: Centralized configuration management.
- **Service Discovery (Eureka)**: Dynamic service registry.
- **API Gateway**: Spring Cloud Gateway with JWT validation and rate-limiting.
- **Secret Management**: .env templating and Vault integration (WIP).

### 🚀 CI/CD
- **GitHub Actions** templates for:
  - Build & test
  - Docker image publishing
  - Integration testing with Testcontainers
  - Linting and formatting

### 📊 Observability
- **ELK Stack (Elasticsearch, Logstash, Kibana)** for centralized logging
- **Custom log configuration** in each microservice

---

## 📂 Project Structure

| Repo | Description |
|------|-------------|
| [`ecommerce-auth-service`](https://github.com/AlexisRodriguezCS/ecommerce-auth-service) | JWT-based authentication and RBAC |
| [`ecommerce-product-service`](https://github.com/AlexisRodriguezCS/ecommerce-product-service) | Product catalog management |
| [`ecommerce-inventory-service`](https://github.com/AlexisRodriguezCS/ecommerce-inventory-service) | Stock tracking and updates |
| [`ecommerce-order-service`](https://github.com/AlexisRodriguezCS/ecommerce-order-service) | Order lifecycle management |
| [`ecommerce-payment-service`](https://github.com/AlexisRodriguezCS/ecommerce-payment-service) | Payment workflow handling |
| [`ecommerce-notification-service`](https://github.com/AlexisRodriguezCS/ecommerce-notification-service) | Email and SMS notifications |
| [`ecommerce-api-gateway`](https://github.com/AlexisRodriguezCS/ecommerce-api-gateway) | API Gateway with JWT + rate-limiting |
| [`ecommerce-discovery-server`](https://github.com/AlexisRodriguezCS/ecommerce-discovery-server) | Eureka Discovery Server |
| [`ecommerce-config-server`](https://github.com/AlexisRodriguezCS/ecommerce-config-server) | Spring Cloud Config Server |
| **This Repo** | Infra: Docker, ELK, CI/CD, Postman, docs |

---

## 📫 Postman Collections

API requests and test suites are maintained under `/postman`. You can import these into Postman for testing across services.

---

## 🧪 Testing Strategy

- Each service includes:
  - **Unit tests**
  - **Integration tests** (with **Testcontainers** for DBs & brokers)
  - **End-to-end smoke tests** via Postman/Newman (WIP)

---

## 🗂️ Documentation

All architecture decisions, diagrams, and environment setups are under `/docs`.

- System Design (UML)
- Local Dev Setup
- CI/CD Pipeline Workflows
- Secrets and Config Strategy

---

## 🏁 Roadmap

- [ ] CI/CD templates
- [ ] Docker Compose dev environment
- [ ] ELK stack for centralized logging
- [ ] Vault for secret management
- [ ] Rate limiting strategy via Redis buckets

---

## 🙌 Contributions

This is a personal project but engineered to production-level quality. PRs and suggestions are welcome if aligned with the core vision.

---
