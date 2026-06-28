SELECT name
FROM sqlite_master
WHERE type='table';

SELECT *
FROM crime_scene_report
WHERE city = 'SQL City'
AND date = 20180115;

SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

SELECT *
FROM person
WHERE name LIKE 'Annabel%'
AND address_street_name = 'Franklin Ave';

SELECT *
FROM interview
WHERE person_id = 14887;

SELECT *
FROM interview
WHERE person_id = 16371;

SELECT *
FROM get_fit_now_member
WHERE id LIKE '48Z%'
AND membership_status = 'gold';

SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = 20180109
AND membership_id LIKE '48Z%';

SELECT id, name, license_id
FROM person
WHERE id IN (28819, 67318);

SELECT *
FROM drivers_license
WHERE id IN (173289, 423327);

SELECT *
FROM interview
WHERE person_id = 67318;

SELECT *
FROM drivers_license
WHERE gender = 'female'
AND hair_color = 'red'
AND height BETWEEN 65 AND 67
AND car_make = 'Tesla'
AND car_model = 'Model S';

SELECT person_id, COUNT(*) AS visits
FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert'
AND date BETWEEN 20171201 AND 20171231
GROUP BY person_id
HAVING COUNT(*) = 3;

SELECT p.id, p.name
FROM person p
WHERE p.license_id IN (
    SELECT id
    FROM drivers_license
    WHERE gender = 'female'
      AND hair_color = 'red'
      AND height BETWEEN 65 AND 67
      AND car_make = 'Tesla'
      AND car_model = 'Model S'
)
AND p.id IN (
    SELECT person_id
    FROM facebook_event_checkin
    WHERE event_name = 'SQL Symphony Concert'
      AND date BETWEEN 20171201 AND 20171231
    GROUP BY person_id
    HAVING COUNT(*) = 3
);