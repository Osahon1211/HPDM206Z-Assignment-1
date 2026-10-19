USE hospital_database;

-- Query 1: Find doctors working at a specific hospital
SELECT d.person_id, d.name, h.name AS hospital_name
FROM doctors d
JOIN hospitals h ON d.hospital_id = h.hospital_id
WHERE h.hospital_id = 22;

-- Query 2: Find prescriptions for a specific patient
SELECT p.name AS patient_name,
       pr.medication,
       pr.prescription_date,
       d.name AS doctor_name
FROM prescriptions pr
JOIN patients p ON pr.patient_id = p.person_id
JOIN doctors d ON pr.doctor_id = d.person_id
WHERE p.person_id = 345
ORDER BY pr.prescription_date DESC;

-- Query 3: Find prescriptions issued by a specific doctor
SELECT d.name AS doctor_name,
       p.name AS patient_name,
       pr.medication,
       pr.prescription_date
FROM prescriptions pr
JOIN doctors d ON pr.doctor_id = d.person_id
JOIN patients p ON pr.patient_id = p.person_id
WHERE d.person_id = 68
ORDER BY pr.prescription_date DESC;

-- Query 4: Insert a new patient and assign them to a doctor
INSERT INTO patients
(person_id, name, date_of_birth, address, role, doctor_id)
VALUES
(701, 'James Smith', '1995-06-15',
 '10 High Street, London', 'Patient', 68);

-- Query 5: Find the doctor who issued the most prescriptions
SELECT d.person_id,
       d.name AS doctor_name,
       COUNT(pr.prescription_id) AS total_prescriptions
FROM doctors d
JOIN prescriptions pr ON d.person_id = pr.doctor_id
GROUP BY d.person_id, d.name
ORDER BY total_prescriptions DESC
LIMIT 1;

-- Query 6: Find doctors at the hospital with the most beds
SELECT d.person_id,
       d.name AS doctor_name,
       h.name AS hospital_name,
       h.size AS number_of_beds
FROM doctors d
JOIN hospitals h ON d.hospital_id = h.hospital_id
WHERE h.size = (SELECT MAX(size) FROM hospitals)
ORDER BY d.name;