-- 查询：每只狗狗及其主人的姓名（内连接）
SELECT d.name AS dog_name, o.name AS owner_name
FROM dogs d
JOIN owners o ON d.owner_id = o.owner_id;

-- 查询：参加“夏日狂欢”活动的狗狗名字 + 活动时间
SELECT d.name AS dog_name, a.name AS activity_name, a.date
FROM dogs d
JOIN dog_activities da ON d.dog_id = da.dog_id
JOIN activities a ON da.activity_id = a.activity_id
WHERE a.name = '夏日狂欢';

-- 查询：所有狗狗及其预约的服务（含服务名和预约日期）
SELECT d.name AS dog_name, s.name AS service_name, ap.appointment_date
FROM dogs d
JOIN appointments ap ON d.dog_id = ap.dog_id
JOIN services s ON ap.service_id = s.service_id;

-- 查询：所有服务记录，包括没有预约的服务（左连接）
SELECT s.name AS service_name, ap.appointment_date
FROM services s
LEFT JOIN appointments ap ON s.service_id = ap.service_id;

-- 查询：所有狗狗，包括没有主人的记录（外连接，适用于未来“流浪狗”支持）
SELECT d.name AS dog_name, o.name AS owner_name
FROM dogs d
LEFT JOIN owners o ON d.owner_id = o.owner_id;

-- 查询：某位主人（Bob Smith）名下狗狗的活动记录
SELECT o.name AS owner, d.name AS dog_name, a.name AS activity
FROM owners o
JOIN dogs d ON o.owner_id = d.owner_id
JOIN dog_activities da ON d.dog_id = da.dog_id
JOIN activities a ON da.activity_id = a.activity_id
WHERE o.name = 'Bob Smith';
