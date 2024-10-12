-- Part 1: INSERT Data
INSERT patients
	(first_name, last_name, date_of_birth, gender, language)
VALUES
('John', 'Doe', '1980-11-15', 'Male', 'English');

-- Part 2: UPDATE Data
UPDATE patients
SET language = 'Spanish'
WHERE patient_id = 947;

-- Part 3: DELETE Data
DELETE FROM patients
WHERE patient_id = 10;

-- Part 4: Handling NULL Values
-- 4.1 IFNULL
SELECT 
first_name,
last_name,
IFNULL(email_address, 'N/A') AS Email
FROM providers;

-- 4.2 COALESCE
SELECT first_name,
last_name,
COALESCE(email_address, phone_number, 'Missing details') AS contact_details
FROM providers;

-- Bonus question
SELECT *
FROM providers
WHERE provider_specialty = 'Pediatrics'
AND (phone_number IS NULL OR email_address IS NULL);