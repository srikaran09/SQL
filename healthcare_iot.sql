CREATE DATABASE HealthcareIoT;
USE HealthcareIoT;

CREATE TABLE PatientReadings (
    ReadingID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    ReadingTime DATETIME DEFAULT CURRENT_TIMESTAMP,
    Temperature DECIMAL(4,1) CHECK (Temperature BETWEEN 30.0 AND 45.0),
    HeartRate INT CHECK (HeartRate BETWEEN 30 AND 220),
    SystolicBP INT CHECK (SystolicBP BETWEEN 50 AND 250),
    DiastolicBP INT CHECK (DiastolicBP BETWEEN 30 AND 150),
    BatteryLevel DECIMAL(5,2) CHECK (BatteryLevel BETWEEN 0 AND 100),
    HealthStatus VARCHAR(20) CHECK (HealthStatus IN ('Healthy', 'Unhealthy'))
);

INSERT INTO PatientReadings (PatientID, Temperature, HeartRate, SystolicBP, DiastolicBP, BatteryLevel, HealthStatus)
VALUES
(101, 36.8, 72, 120, 80, 95.5, 'Healthy'),
(102, 37.5, 110, 140, 90, 87.0, 'Unhealthy'),
(103, 39.2, 130, 150, 95, 65.0, 'Unhealthy'),
(104, 36.2, 68, 118, 78, 98.0, 'Healthy'),
(105, 38.0, 150, 160, 100, 45.0, 'Unhealthy'),
(106, 36.5, 75, 125, 82, 20.0, 'Healthy');

SELECT PatientID, HeartRate, ReadingTime
FROM PatientReadings
WHERE HeartRate > 120;

SELECT PatientID, SystolicBP, DiastolicBP, ReadingTime
FROM PatientReadings
WHERE SystolicBP > 140 OR DiastolicBP > 90;

SELECT PatientID, Temperature, ReadingTime
FROM PatientReadings
WHERE Temperature > 38.0;

SELECT HealthStatus,
       AVG(Temperature) AS AvgTemperature,
       AVG(HeartRate) AS AvgHeartRate,
       AVG(SystolicBP) AS AvgSystolicBP,
       AVG(DiastolicBP) AS AvgDiastolicBP
FROM PatientReadings
GROUP BY HealthStatus;

SELECT HealthStatus, COUNT(*) AS PatientCount
FROM PatientReadings
GROUP BY HealthStatus;

SELECT PatientID, BatteryLevel, ReadingTime
FROM PatientReadings
WHERE BatteryLevel < 30;

SELECT HealthStatus, AVG(BatteryLevel) AS AvgBattery
FROM PatientReadings
GROUP BY HealthStatus;
