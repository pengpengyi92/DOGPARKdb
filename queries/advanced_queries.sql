-- 查询：狗狗总数量
SELECT COUNT(*) AS total_dogs FROM dogs;

-- 查询：每位主人拥有多少只狗
SELECT o.name AS owner_name, COUNT(d.dog_id) AS dog_count
FROM owners o
LEFT JOIN dogs d ON o.owner_id = d.owner_id
GROUP BY o.name;

-- 查询：预约最多的服务项目（按预约次数排序）
SELECT s.name AS service_name, COUNT(a.appointment_id) AS total_appointments
FROM services s
LEFT JOIN appointments a ON s.service_id = a.service_id
GROUP BY s.name
ORDER BY total_appointments DESC;

-- 查询：所有预约记录中，哪只狗预约最早（使用 LIMIT）
SELECT d.name AS dog_name, ap.appointment_date
FROM appointments ap
JOIN dogs d ON ap.dog_id = d.dog_id
ORDER BY ap.appointment_date ASC
LIMIT 1;

-- 查询：狗狗是否参加过“敏捷挑战赛”
SELECT d.name,
       CASE
           WHEN da.activity_id IS NOT NULL THEN '已参加'
           ELSE '未参加'
       END AS agility_status
FROM dogs d
LEFT JOIN dog_activities da ON d.dog_id = da.dog_id
LEFT JOIN activities a ON da.activity_id = a.activity_id AND a.name = '敏捷挑战赛';

-- 查询：所有狗狗以及它们的主人（嵌套子查询过滤某一活动参与者）
SELECT d.name, o.name AS owner
FROM dogs d
JOIN owners o ON d.owner_id = o.owner_id
WHERE d.dog_id IN (
    SELECT dog_id
    FROM dog_activities da
    JOIN activities a ON da.activity_id = a.activity_id
    WHERE a.name = '夏日狂欢'
);

-- （可选）使用窗口函数：给服务预约按时间排序并编号
SELECT d.name AS dog_name, s.name AS service_name, ap.appointment_date,
       RANK() OVER (ORDER BY ap.appointment_date) AS service_rank
FROM appointments ap
JOIN dogs d ON ap.dog_id = d.dog_id
JOIN services s ON ap.service_id = s.service_id;
