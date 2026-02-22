# remindme-saas

remindme-saas is a full-stack SaaS application designed to help users remember to follow up with contacts, respond to important messages, and manage communication reminders efficiently.

The system is built using:

- Flutter Web frontend
- Python REST API backend (Flask)
- Appwrite for authentication and database
- Microsoft Azure Graph API for Outlook email notifications

This project is currently in its MVP (Minimum Viable Product) stage and under active development.

---

# Architecture Overview

remindme-saas uses a modern SaaS architecture with clear separation of concerns.

## Frontend Layer

Flutter Web application.

Responsibilities:

- User interface rendering
- User authentication via Appwrite
- Reminder creation and management
- Communication with backend REST API

## Backend Layer

Python Flask REST API.

Responsibilities:

- Business logic processing
- Reminder scheduling
- Background job execution
- Email notification via Microsoft Graph API
- Communication with Appwrite using Server SDK

## Backend-as-a-Service Layer

Appwrite provides:

- Authentication
- Session management
- Database storage
- Secure user data isolation

Frontend communicates directly with Appwrite.

Backend communicates securely with Appwrite using API keys.

## Email Delivery Layer

Microsoft Azure Graph API is used for sending Outlook email notifications.

Advantages:

- Secure OAuth2 authentication
- Enterprise-grade reliability
- No SMTP required
- Production-ready email infrastructure

Example endpoint used:

POST https://graph.microsoft.com/v1.0/users/{sender-email}/sendMail

---

# REST API Endpoints

Example endpoints:

POST   /reminders  
GET    /reminders  
PUT    /reminders/{id}  

POST   /contacts  
GET    /contacts  

GET    /health  

These endpoints handle reminder management and system operations.

---

# Reminder Processing System

The backend scheduler continuously:

- Fetches reminders from Appwrite
- Checks for due reminders
- Sends Outlook email notifications via Microsoft Graph API
- Updates reminder status

This simulates real-world SaaS background processing.

---

# Tech Stack

Frontend:
- Flutter Web
- Dart

Backend:
- Python
- Flask REST API
- APScheduler

Backend-as-a-Service:
- Appwrite

Authentication:
- Appwrite Auth

Database:
- Appwrite Database

Email Delivery:
- Microsoft Azure Graph API
- Microsoft Outlook

Version Control:
- Git
- GitHub

---

# Installation

## Clone repository

```bash
git clone https://github.com/SoufianElfouzari/remindme-saas.git
cd remindme-saas
```

---

## Frontend Setup

Install dependencies:

```bash
flutter pub get
```

Run frontend:

```bash
flutter run -d chrome
```

---

## Backend Setup

Navigate to backend folder:

```bash
cd backend
```

Create virtual environment:

```bash
python -m venv venv
```

Activate virtual environment (Windows):

```bash
venv\Scripts\activate
```

Activate virtual environment (Mac/Linux):

```bash
source venv/bin/activate
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Run backend server:

```bash
python app.py
```

---

# Environment Variables

Required backend environment variables:

APPWRITE_ENDPOINT=  
APPWRITE_PROJECT_ID=  
APPWRITE_API_KEY=  

AZURE_TENANT_ID=  
AZURE_CLIENT_ID=  
AZURE_CLIENT_SECRET=  

AZURE_SENDER_EMAIL=  

---

# MVP Status

Current MVP includes:

- SaaS architecture foundation
- Flutter frontend structure
- Python REST API backend structure
- Appwrite authentication and database integration
- Microsoft Graph API email integration design

In progress:

- Reminder creation
- Email sending implementation
- Scheduler integration

---

# Purpose of This Project

This project demonstrates:

- Full-stack SaaS development
- REST API backend architecture
- Appwrite integration
- Microsoft Graph API integration
- Background job scheduling
- Real-world SaaS architecture patterns

This project serves as both:

- Functional SaaS application
- Professional portfolio project

---

# Future Improvements

Planned features:

- Push notifications
- Mobile application
- Desktop application
- Recurring reminders
- Advanced filtering
- Reminder analytics

---

# License

MIT License

---

# Author

Soufian El-Fouzari

GitHub:
https://github.com/SoufianElfouzari