# DOGPARKdb

# 🐶 小狗乐园数据库 DogParkDB

![image](https://github.com/user-attachments/assets/bad04883-b437-46f8-a24a-01f0b847848a)

欢迎来到「小狗乐园」示例数据库项目！

这是一个用于练习 SQL 的入门数据库，模拟一个管理狗狗、主人、活动和护理服务的乐园环境。

---

## 📦 项目结构

| 文件/文件夹            | 说明                                   |
|------------------------|----------------------------------------|
| `schema.sql`           | 数据库表结构定义                      |
| `seed_data.sql`        | 插入示例数据                          |
| `queries/`             | 常见 SQL 查询练习                     |
| `ERD.png`              | 数据库实体关系图                      |

---

## 🧱 表设计一览

- `dogs`: 狗狗信息表
- `owners`: 狗主人信息
- `activities`: 活动安排
- `dog_activities`: 狗狗参加活动记录
- `services`: 护理服务项目
- `appointments`: 狗狗预约服务记录

---

## 🚀 快速开始

```bash
# 创建数据库
CREATE DATABASE DogParkDB;

# 进入数据库并运行 schema.sql 和 seed_data.sql
USE DogParkDB;
SOURCE schema.sql;
SOURCE seed_data.sql;
