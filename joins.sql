SELECT lost_dog_collars.dog_name
  FROM dog_owners
  JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);

SELECT DISTINCT lost_dog_collars.dog_name FROM lost_dog_collars
  WHERE NOT EXISTS (SELECT * FROM dog_owners
  WHERE dog_owners.dog_name = lost_dog_collars.dog_name);
