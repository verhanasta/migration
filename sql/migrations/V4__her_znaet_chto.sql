WITH keyy AS (
  INSERT INTO users (name)
  VALUES ('Me'), ('You')
  RETURNING id
)
INSERT INTO posts (text, owner_id)
SELECT CONCAT('ex: ', keyy.id, 'ample'), keyy.id
FROM keyy;