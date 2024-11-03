# PAWS Online Pet Health Care System
![image](https://github.com/user-attachments/assets/17213ed0-a8c3-4e7a-8364-8ca2acc51daa)

## Introduction
PAWS is a web-based application designed to centralize veterinary medicine practices on a single online platform, providing easy access for pet owners. The platform aims to offer a range of features that facilitate online appointment scheduling, management of pet health records, and streamlined communication between veterinarians and pet owners.

### Key Features
- **Centralized Management**: Integrates all veterinary services onto a single platform.
- **User-Friendly Interfaces**: Separate interfaces for veterinarians and pet owners.
- **Admin Control**: Backend functionality for administrators to manage users, appointments, and veterinarians.

## Technology Stack
- **Server**: Tomcat
- **Database**: MySQL
- **Frontend**: HTML, CSS, Bootstrap, JSP

## System Design

### Architecture
PAWS is built using a client-server architecture. It operates independently and requests services directly from the server, enabling secure and efficient data handling.

### Modules
The application consists of three main user modules:

1. **Admin**  
   - Manage pets, veterinarians, appointments, and clients.
  
2. **Veterinarian**  
   - View scheduled appointments and client information.
   - Create and manage profiles.

3. **Pet Owner**  
   - Schedule and manage appointments.
   - View veterinarian information.
   - Create and update personal profiles.

### Interfaces
The system provides distinct interfaces for veterinarians and pet owners. Admin functions are accessible directly through database management rather than a front-end interface.

### Database Design
Data is stored in a MySQL database, connected to the application through a JDBC connector. The backend structure includes tables for appointments, clinics, pets, and veterinarians, among others. The database also includes views, stored procedures, functions, and triggers to maintain data consistency and support efficient data retrieval.

## ER Diagram
![image](https://github.com/user-attachments/assets/7c1f7b00-9d04-48ae-8ede-c58740742456)

## Project Workflow
The application connects to the MySQL database via a Tomcat server. Users interact with the system through interfaces that communicate with the backend, where data is processed and stored. Administrators perform backend tasks directly within the database.
![image](https://github.com/user-attachments/assets/1b525915-8eab-49ae-8d87-749b4c7d8a34)
![image](https://github.com/user-attachments/assets/783d6a38-91a8-4660-982a-81628e81a5a8)
![image](https://github.com/user-attachments/assets/4aa84716-131e-49b3-ab2e-381055821f16)
![image](https://github.com/user-attachments/assets/fbf900e8-8afb-432b-949d-d0b2f75a2259)
![image](https://github.com/user-attachments/assets/49575e55-f8f2-47a3-b292-54ce03ab06a6)
![image](https://github.com/user-attachments/assets/829abfea-5756-4f0f-850c-afa85317b03a)
![image](https://github.com/user-attachments/assets/d27e3ce0-6264-4a63-a76a-91ad401aed2a)

---

This README provides a high-level overview of the PAWS system, helping users understand its purpose, design, and features. Let me know if you’d like additional sections, such as setup instructions or a detailed workflow.
