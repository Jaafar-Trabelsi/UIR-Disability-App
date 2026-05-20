# 🎓 UIR Disability App

### University International Rabat — Disability Management Platform

> A Java desktop application designed to streamline the management of requests and complaints from students with disabilities at the University International Rabat.

---

## ⚙️ Quick Launch (IMPORTANT)

To run the application:

* Use the shortcut **Disability_App_Java**
* It targets:

```

devhandicaprecuni-1.0-SNAPSHOT-jar-with-dependencies.jar


```

### ▶️ Run options:

**Option 1 (Easiest):**

* Double-click `Disability_App_Java`

**Option 2 (Terminal):**

```bash
java -jar devhandicaprecuni-1.0-SNAPSHOT-jar-with-dependencies.jar

```

### 🔑 Default Credentials

| Role | Email | Password |
| --- | --- | --- |
| **Admin** | admin@uir.ac.ma | admin123 |
| **User** | user@uir.ac.ma | 123456 |

---

## 🗄 Database Setup (IMPORTANT)

### 1. Start MySQL

Make sure MySQL runs on:

```
localhost:3306

```

### 2. Open phpMyAdmin

```
http://localhost/phpmyadmin

```

### 3. Create database

```sql
CREATE DATABASE gestion_handicap_univ;

```

### 4. Import SQL file

Import:

```
gestion_handicap_univ.sql

```

into **gestion_handicap_univ**

---

## 🧾 Overview

The **UIR Disability App** is a Java Swing desktop application built for the **2025/2026 academic year**.

It provides:

* 👨‍💼 Admin panel (management system)
* 🎓 Student panel (requests & complaints system)

---

## ✨ Features

### 🔐 Authentication

* Login with email/password
* Role-based access control
* SHA-256 password encryption
* Remember me (Java Preferences)
* Forgot password (verification flow)
* Student registration + disability info + PDF upload

---

### 👨‍💼 Admin Features

* Dashboard with statistics
* Manage requests (validate / refuse / edit / export CSV)
* Manage complaints (status + responses)
* Manage accounts (validate / edit / delete)
* Full history tracking

---

### 🎓 Student Features

* Submit requests (demandes)
* Submit complaints (réclamations)
* View personal history
* Track status updates

---

## 📸 Screenshots

### Login

### Forgot Password

### Register

---

### Admin Dashboard

---

### Admin Management

---

### Student Panel

---

## 🛠 Tech Stack

| Layer | Technology |
| --- | --- |
| Language | Java (JDK 17+) |
| UI | Java Swing |
| Database | MySQL 8 |
| DB Name | gestion_handicap_univ |
| Connection | JDBC |
| Architecture | MVC |
| IDE | NetBeans |
| Security | SHA-256 |

---

## 🗄 Database Schema

```
gestion_handicap_univ
├── utilisateur (idUtilisateur, email, pwd, nom, role)
├── etudiant (idEtudiant, idUtilisateur, handicap, compteValide)
├── admin (idAdmin, idUtilisateur, departement)
├── demande (idDemande, desc, date, type, statut, idEtudiant)
├── reclamation (idRecla, date, desc, statut, action, idEtudiant)
└── piecejustificatif (idPiece, nom, desc, dateAjout, chemin, idDemande)

```

### Enums

* TypeDemande: AMENAGEMENT_EXAMEN · ACCESSIBILITE · ACCOMPAGNEMENT · AUTRE
* StatutDemande: EN_COURS · ACCEPTEE · REFUSEE
* StatutReclamation: EN_ATTENTE · EN_TRAITEMENT · RESOLUE · REJETEE

---

## ⚙️ Installation

```bash
git clone https://github.com/Jaafar-Trabelsi/University-Disability-Platform.git

```

### Steps:

1. Open phpMyAdmin
2. Create database `gestion_handicap_univ`
3. Import `gestion_handicap_univ.sql`
4. Open project in NetBeans
5. Run project OR use shortcut

---

## 🚀 Usage Flow

1. Student registers
2. Admin validates account
3. Student logs in
4. Student submits requests/complaints
5. Admin processes them
6. Student tracks status

---

## 👥 Authors

* **Jaafar Trabelsi** — [GitHub](https://github.com/Jaafar-Trabelsi)
* **conqueror31** — [GitHub](https://github.com/conqueror31)
* **rayan963** — [GitHub](https://github.com/rayan963)

---
