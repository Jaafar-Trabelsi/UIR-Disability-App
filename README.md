<div align="center">

# 🎓 UIR Disability App
### University International Rabat — Disability Management Platform

![Java](https://img.shields.io/badge/Java-Swing-orange?style=for-the-badge&logo=java)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

> A Java desktop application designed to streamline the management of requests and complaints from students with disabilities at the University International Rabat.

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Prerequisites](#-prerequisites)
- [Database Setup](#-database-setup)
- [Launching the Application](#-launching-the-application)
- [Features](#-features)
- [Usage Workflow](#-usage-workflow)

---

## 🧾 Overview

The **UIR Disability App** is a Java Swing desktop application built for the **2025/2026 academic year**. It provides two separate interfaces:

- 👨‍💼 **Admin** — manages student accounts, requests, complaints, history, and statistics.
- 🎓 **Student** — submits and tracks personal requests, complaints, and history.

---

## 🛠 Prerequisites
- **Java JDK 17+** (Ensure Java is installed in your system PATH).
- **MySQL Server** (e.g., XAMPP, WAMP, or standalone MySQL).

---

## 🗄 Database Setup

To run this application, you must connect it to the database:

1. Start your **MySQL Server** (if using XAMPP, start Apache and MySQL).
2. Open your browser and navigate to `http://localhost/phpmyadmin`.
3. Create a new database named exactly: **`gestion_handicap_univ`**.
4. With the database selected, click the **Import** tab.
5. Click **Choose File** and select the `gestion_handicap_univ.sql` file provided in this folder.
6. Click **Go** at the bottom to import the schema.

---

## 🚀 Launching the Application

You can launch the app in two ways:

### Method 1: Desktop Shortcut (Recommended)
Double-click the file **`Disability_App_Java.lnk`**.
* *Note:* This is a Windows Shortcut configured to execute the main application located at: 
`target/devhandicaprecuni-1.0-SNAPSHOT-jar-with-dependencies.jar`

### Method 2: Command Line
If the shortcut is not working, open your terminal (CMD or PowerShell) in this folder and run:
```bash
java -jar target/devhandicaprecuni-1.0-SNAPSHOT-jar-with-dependencies.jar
