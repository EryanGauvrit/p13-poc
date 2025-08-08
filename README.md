# POC Chat - Monorepo

A simple proof-of-concept realtime chat application using **Java Spring Boot** for the backend and **Angular** for the frontend, communicating via **WebSocket (STOMP over SockJS)**. 

---

## 🗂 Project Structure

- back/ Java Spring Boot (WebSocket server)
- front/ Angular app (WebSocket client)
- db/ SQL files to initilize each database
  
---

## ⚙️ Prerequisites

- Java 17+
- Node.js 18+ and npm
- Angular CLI: `npm install -g @angular/cli`
- Maven or compatible build system

---

## 🚀 How to Run

### 1. Back (Spring Boot)

```bash
cd back
mvn spring-boot:run
```

### 1. Front (Angular)
```bash
cd front
npm install
ng serve
Runs on: http://localhost:4200
```

## 🧪 How It Works
- The frontend connects to /ws via SockJS
- Messages are sent to /app/chat
- Messages are broadcast to all clients via /topic/messages