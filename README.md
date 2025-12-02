# 🌌 Celestial Bodies Database  
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-12-blue?logo=postgresql)  
![freeCodeCamp](https://img.shields.io/badge/freeCodeCamp-Project-0A0A23?logo=freeCodeCamp)  
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

This repository contains my solution to the **Celestial Bodies Database** project for the freeCodeCamp **Relational Database Certification**.

The project demonstrates:

- Designing and creating a PostgreSQL relational database  
- Building structured tables for: **galaxies**, **stars**, **planets**, **moons**, and **planet types**  
- Defining **primary keys**, **foreign keys**, constraints, and one-to-many relationships  
- Using proper column types (`VARCHAR`, `NUMERIC`, `INT`, `BOOLEAN`, etc.)  
- Enforcing data integrity with `NOT NULL`, `UNIQUE`, and reference constraints  
- Populating the database with realistic sample data  
- Exporting the full project using `pg_dump` for reproducibility  

---

## 📂 Files Included

- **`universe.sql`** — Complete PostgreSQL database dump containing:
  - All table definitions  
  - Constraints and relationships  
  - Inserted sample data  
  - Sequences and defaults  

---

## 🛠️ Technologies Used
- **PostgreSQL 12**
- **psql CLI**
- **freeCodeCamp CodeRoad environment**

---

## 🚀 How to Restore the Database

```bash
psql -U postgres < universe.sql
