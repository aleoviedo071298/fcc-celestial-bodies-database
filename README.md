# Celestial Bodies Database

My solution to the Celestial Bodies Database project for freeCodeCamp's Relational
Database certification: a PostgreSQL database modeling galaxies, stars, planets,
moons, and planet types.

## What This Demonstrates

- Designing and creating a PostgreSQL relational database.
- Structured tables for galaxies, stars, planets, moons, and planet types.
- Primary keys, foreign keys, constraints, and one-to-many relationships.
- Proper column types (`VARCHAR`, `NUMERIC`, `INT`, `BOOLEAN`, etc).
- Data integrity via `NOT NULL`, `UNIQUE`, and reference constraints.
- Realistic sample data.
- Reproducible export via `pg_dump`.

## Files Included

- `universe.sql` — complete PostgreSQL database dump: table definitions, constraints, relationships, sample data, sequences and defaults.

## Tech Stack

- PostgreSQL 12
- psql CLI
- freeCodeCamp CodeRoad environment

## How to Restore

```bash
psql -U postgres < universe.sql
```

## Author

**Alejandro Oviedo**
