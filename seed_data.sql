-- 插入狗主信息
INSERT INTO owners (name, phone, email) VALUES
('Alice Johnson', '123-456-7890', 'alice@example.com'),
('Bob Smith', '987-654-3210', 'bob@example.com');

-- 插入狗狗信息
INSERT INTO dogs (name, breed, gender, birthdate, owner_id) VALUES
('Buddy', 'Golden Retriever', 'Male', '2019-05-12', 1),
('Luna', 'French Bulldog', 'Female', '2020-08-20', 1),
('Max', 'Husky', 'Male', '2018-11-03', 2);

-- 插入活动信息
INSERT INTO activities (name, location, date, description) VALUES
('夏日狂欢', '中央公园', '2025-06-01', '一场盛大的夏日狗狗派对'),
('敏捷挑战赛', '狗狗运动场', '2025-06-15', '展示狗狗敏捷技巧的比赛');

-- 插入狗狗活动参与记录
INSERT INTO dog_activities (dog_id, activity_id) VALUES
(1, 1),
(2, 1),
(3, 2);

-- 插入服务信息
INSERT INTO services (name, description, price) VALUES
('洗澡服务', '为狗狗提供舒适的洗澡体验', 50.00),
('毛发修剪', '专业造型与护理', 80.00);

-- 插入服务预约记录
INSERT INTO appointments (dog_id, service_id, appointment_date, notes) VALUES
(1, 1, '2025-06-05', 'Buddy 最近喜欢泥地，需要彻底清洗'),
(2, 2, '2025-06-06', 'Luna 要参加拍照活动，剪个萌萌造型');
