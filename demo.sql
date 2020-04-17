USE codeup_test_db;
SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id;

