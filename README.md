# Celestial Bodies Database

This repository contains my solution to the **Celestial Bodies Database** project from the freeCodeCamp Relational Database Certification.

The project demonstrates:
- Designing and creating a PostgreSQL relational database
- Building tables for galaxies, stars, planets, moons, and planet types
- Setting up primary keys, foreign keys, constraints, and relationships
- Using `NOT NULL`, `UNIQUE`, `VARCHAR`, `NUMERIC`, and `BOOLEAN` types
- Inserting realistic sample data
- Exporting the full project using `pg_dump`

## Files Included
- `universe.sql` — Full PostgreSQL dump containing all tables, constraints, relationships, and data.

## Technologies
- PostgreSQL 12
- psql CLI
- freeCodeCamp CodeRoad environment

## How to Restore the Database

```bash
psql -U postgres < universe.sql
