-- 创建狗主信息表
CREATE TABLE owners (
    owner_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- 创建狗狗信息表
CREATE TABLE dogs (
    dog_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    gender ENUM('Male', 'Female'),
    birthdate DATE,
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

-- 创建活动信息表
CREATE TABLE activities (
    activity_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    date DATE,
    description TEXT
);

-- 创建狗狗参与活动表（多对多）
CREATE TABLE dog_activities (
    dog_id INT,
    activity_id INT,
    PRIMARY KEY (dog_id, activity_id),
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id),
    FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
);

-- 创建服务信息表
CREATE TABLE services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(6,2)
);

-- 创建预约记录表
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    dog_id INT,
    service_id INT,
    appointment_date DATE,
    notes TEXT,
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);
