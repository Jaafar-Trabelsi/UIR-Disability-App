<div align="center">

# 🎓 UIR Disability App
### University International Rabat — Disability Management Platform

![Java](https://img.shields.io/badge/Java-Swing-orange?style=for-the-badge&logo=java)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)
![NetBeans](https://img.shields.io/badge/IDE-NetBeans-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

> A Java desktop application designed to streamline the management of requests and complaints from students with disabilities at the University International Rabat.

</div>

---

## ⚙️ Quick Launch (IMPORTANT)

You can run the application in two ways:

### ✅ Option 1 (Recommended)
Double-click the shortcut:

```

Disability_App_Java

```id="launch01"

This shortcut targets:

```

devhandicaprecuni-1.0-SNAPSHOT-jar-with-dependencies.jar

```id="launch02"

---

### ⚠️ Option 2 (Manual Launch Path)

You MUST go to this folder:

```

C:\Users\jaafa\Desktop\Disability_App_Java\target

```id="launch03"

Then run:

```

devhandicaprecuni-1.0-SNAPSHOT-jar-with-dependencies.jar

````id="launch04"

Or execute via terminal:

```bash
java -jar devhandicaprecuni-1.0-SNAPSHOT-jar-with-dependencies.jar
````

---

## 🗄 Database Setup (IMPORTANT)

Before running the app, set up MySQL correctly:

### 1. Start MySQL

Make sure MySQL is running on:

````
localhost:3306
``` id="db01"

---

### 2. Open phpMyAdmin

````

[http://localhost/phpmyadmin](http://localhost/phpmyadmin)

````id="db02"

---

### 3. Create database

```sql id="db03"
CREATE DATABASE gestion_handicap_univ;
````

---

### 4. Import SQL file

Import:

````
gestion_handicap_univ.sql
``` id="db04"

into the database **gestion_handicap_univ**

---

## 🧾 Overview

The **UIR Disability App** is a Java Swing desktop application developed for the **2025/2026 academic year**.

It provides two main interfaces:

- 👨‍💼 **Admin panel** — manage users, requests, complaints, and statistics  
- 🎓 **Student panel** — submit and track requests and complaints  

---

## ✨ Features

### 🔐 Authentication System
- Login with email/password
- Role-based access control (Admin / Student)
- SHA-256 password encryption
- Remember Me (Java Preferences)
- Forgot Password (verification system)
- Student registration with disability description + PDF upload

---

### 👨‍💼 Admin Features
- Dashboard with statistics (users, requests, complaints)
- Manage requests (validate / refuse / edit / export CSV)
- Manage complaints (status updates + responses)
- Manage user accounts (validate / edit / delete)
- Full history tracking system

---

### 🎓 Student Features
- Submit requests (demandes)
- Submit complaints (réclamations)
- Track request status
- View personal history

---

## 📸 Screenshots

### 🔑 Login
![Login](img/login.png)

### 🔒 Forgot Password
![Forgot Password](img/forgot_password.png)

### 📝 Register
![Register](img/register.png)

---

### 👨‍💼 Admin Dashboard

![Dashboard](img/dashboard_stats.png)

![Requests](img/demandes_statut.png)

![Complaints](img/reclamations_statut.png)

![Users](img/comptes_utilisateurs.png)

---

### ⚙️ Admin Management

![Manage Requests](img/gestion_demandes.png)

![Manage Complaints](img/gestion_reclamations.png)

---

### 🎓 Student Panel

![My Complaints](img/mes_reclamations.png)

![History](img/historique_etudiant.png)

---

## 🛠 Tech Stack

| Layer | Technology |
|------|-----------|
| Language | Java (JDK 17+) |
| UI Framework | Java Swing |
| Database | MySQL 8 |
| DB Name | gestion_handicap_univ |
| Connectivity | JDBC |
| Architecture | MVC (Model–View–Controller) |
| IDE | NetBeans |
| Security | SHA-256 hashing |

---

## 🗄 Database Schema

``` id="schema01"
gestion_handicap_univ
├── utilisateur (idUtilisateur, email, pwd, nom, role)
├── etudiant (idEtudiant, idUtilisateur, handicap, compteValide)
├── admin (idAdmin, idUtilisateur, departement)
├── demande (idDemande, desc, date, type, statut, idEtudiant)
├── reclamation (idRecla, date, desc, statut, action, idEtudiant)
└── piecejustificatif (idPiece, nom, desc, dateAjout, chemin, idDemande)
````

### Enums

* TypeDemande: AMENAGEMENT_EXAMEN · ACCESSIBILITE · ACCOMPAGNEMENT · AUTRE
* StatutDemande: EN_COURS · ACCEPTEE · REFUSEE
* StatutReclamation: EN_ATTENTE · EN_TRAITEMENT · RESOLUE · REJETEE

---

## 🚀 Usage Flow

1. Student creates account
2. Admin validates account
3. Student logs in
4. Student submits requests / complaints
5. Admin processes them
6. Student tracks status

---

## 👥 Authors

* **Jaafar Trabelsi** — [https://github.com/Jaafar-Trabelsi](https://github.com/Jaafar-Trabelsi)
* **conqueror31** — [https://github.com/conqueror31](https://github.com/conqueror31)

---

<div align="center">

Made with ❤️ for UIR — Academic Year 2025/2026

</div>

