# Hospital Database Management System

## Project Overview
This project was developed for HPDM206Z Assignment 1.

The aim is to create a relational hospital database using MySQL,
import hospital data from CSV files, and perform SQL queries to
retrieve and manage information.

## Database Structure
The database contains four tables:

1. Hospitals - stores hospital details.
2. Doctors - stores doctor information and hospital assignments.
3. Patients - stores patient information and assigned doctors.
4. Prescriptions - stores medication prescriptions linked to
   patients and doctors.

## SQL Queries
The project includes six SQL queries:

1. Find doctors working at a specified hospital.
2. Retrieve prescriptions for a specified patient, ordered by date.
3. Find prescriptions issued by a specified doctor.
4. Insert a new patient and assign them to a doctor.
5. Identify the doctor who has issued the most prescriptions.
6. Find doctors working at the hospital with the most beds.

## Project Files
- hospital_database.sql - Database schema and data.
- hospital_queries.sql - Six SQL queries.

## Software Used
- MySQL Server 8.0
- MySQL Workbench
- MySQL Shell
- GitHub

## How to Use
1. Install MySQL Server.
2. Import hospital_database.sql into MySQL.
3. Open hospital_queries.sql in MySQL Workbench.
4. Run the queries to retrieve or modify hospital data.
