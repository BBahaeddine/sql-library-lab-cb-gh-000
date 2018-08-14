UPDATE characters SET species = "Martin" WHERE id = (
  SELECT MAX(id) FROM characters
);