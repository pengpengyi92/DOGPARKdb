-- 查询所有狗狗的基本信息
SELECT * FROM dogs;

-- 查询所有狗主的姓名和联系方式
SELECT name, phone, email FROM owners;

-- 查询所有女性狗狗的信息
SELECT * FROM dogs WHERE gender = 'Female';

-- 查询出生于 2020 年之后的狗狗
SELECT name, breed, birthdate FROM dogs WHERE birthdate > '2020-01-01';

-- 查询某位狗主的所有狗狗（例如 Alice 的狗）
SELECT d.name AS dog_name, o.name AS owner_name
FROM dogs d
JOIN owners o ON d.owner_id = o.owner_id
WHERE o.name = 'Alice Johnson';

-- 查询每只狗预约过的服务（带服务名和日期）
SELECT d.name AS dog_name, s.name AS service_name, a.appointment_date
FROM appointments a
JOIN dogs d ON a.dog_id = d.dog_id
JOIN services s ON a.service_id = s.service_id;
