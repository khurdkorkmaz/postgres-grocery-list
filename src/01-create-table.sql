CREATE TABLE list (
    id serial,
    item text,
    quantity integer,
    measurement text
);

INSERT INTO list (item, quantity, measurement) VALUES ('milk', 2, 'gallons');
INSERT INTO list (item, quantity, measurement) VALUES ('eggs', 1, 'dozen');
INSERT INTO list (item, quantity, measurement) VALUES ('butter', 12, 'sticks');
INSERT INTO list (item, quantity, measurement) VALUES ('flour', 1, 'pound');
INSERT INTO list (item, quantity, measurement) VALUES ('sour cream', 1, 'dollop') RETURNING *;
INSERT INTO list (item, quantity, measurement) VALUES ('apples', 2, 'bushels');
INSERT INTO list (item, quantity, measurement) VALUES ('sugar', 2, 'pounds');
INSERT INTO list (item, quantity, measurement) VALUES ('oj', 3, 'gallons');

SELECT item FROM list WHERE measurement = 'gallons';
SELECT COUNT(*) FROM list;

DELETE FROM list WHERE item = 'butter' RETURNING *;
DELETE FROM list WHERE item = 'sour cream' RETURNING *;
