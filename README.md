# Healthcare IoT Database

This project contains a sample SQL schema and queries for storing and analyzing patient health data collected from IoT-enabled healthcare devices. It demonstrates how to design a table with constraints, insert sample records, and run queries for anomaly detection and aggregation.

## Features

* **Database Schema**:

  * Stores patient health readings such as temperature, heart rate, blood pressure, and device battery level.
  * Includes constraints to ensure data validity (e.g., valid ranges for vitals, health status categories).

* **Sample Data**:

  * Preloaded with multiple patient records representing both healthy and unhealthy conditions.

* **Queries Included**:

  * Detect anomalies (e.g., high heart rate, hypertension, fever).
  * Aggregate statistics (average vital signs, count of patients by health status).
  * Device monitoring (low battery detection, average battery level by health status).

## How to Use

1. Clone this repository.
2. Run the SQL script (`healthcare_iot.sql`) in a MySQL 8.0+ environment.
3. Execute the included queries to explore patient health analytics.

## Example Use Cases

* **Healthcare monitoring dashboards** to flag unusual vital signs.
* **IoT device management** by tracking battery status.
* **Medical research** with aggregated patient statistics.
