# DOGPARKdb


![image](https://github.com/user-attachments/assets/bad04883-b437-46f8-a24a-01f0b847848a)

欢迎来到「小狗乐园」示例数据库项目！

# 🐶 小狗乐园数据库（DogParkDB）

![Dog Park](./assets/dog_park_theme.png)

> 这是一个用于学习和演示 SQL 数据库设计的项目，以「小狗乐园」为主题，模拟真实世界中狗狗管理、活动参与和服务预约等功能场景。

---

## 🗂️ 数据库结构

我们构建了以下核心表格：

| 表名            | 描述                      |
|------------------|---------------------------|
| `dogs`           | 狗狗信息                  |
| `owners`         | 狗主信息                  |
| `activities`     | 活动信息                  |
| `dog_activities` | 狗狗参与活动的记录        |
| `services`       | 护理服务信息              |
| `appointments`   | 狗狗预约服务记录          |

---

## 🛠️ 文件说明

| 文件名               | 描述                                  |
|----------------------|---------------------------------------|
| `schema.sql`         | 全部建表语句                          |
| `seed_data.sql`      | 示例数据插入                          |
| `queries/*.sql`      | 常用 SQL 查询操作                     |
| `assets/dog_park_theme.png` | 项目主题形象图                         |

---

## 🧪 示例查询

```sql
-- 查询所有参加了“夏日狂欢”活动的狗狗名称
SELECT d.name
FROM dogs d
JOIN dog_activities da ON d.dog_id = da.dog_id
JOIN activities a ON da.activity_id = a.activity_id
WHERE a.name = '夏日狂欢';
