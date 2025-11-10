# 🧠 SQL DDL & DML Operations – Students Table Example

This repository contains a complete MySQL practice script demonstrating essential **DDL (Data Definition Language)** and **DML (Data Manipulation Language)** commands using a sample `Students` table.  
Each section of the script is clearly commented for better understanding — ideal for beginners and learners who want hands-on SQL experience.

---

## 📚 Concepts Covered

### 🧱 DDL (Data Definition Language)
Commands that define or modify database structure:
- `CREATE DATABASE`
- `CREATE TABLE`
- `ALTER TABLE`
- `RENAME COLUMN`
- `TRUNCATE TABLE`
- `DROP COLUMN`

### 🧾 DML (Data Manipulation Language)
Commands that handle data within the tables:
- `INSERT INTO`
- `UPDATE`
- `DELETE FROM`
- `SELECT`
- `CASE` expressions for conditional updates

---

## 🧩 Table Details

**Table Name:** `Students`

| Column Name | Data Type | Description |
|--------------|------------|-------------|
| std_roll     | VARCHAR(10) | Student Roll Number |
| std_name     | CHAR(30)    | Student Name |
| age          | INT         | Student Age |
| Country      | VARCHAR(30) | Country of the Student |
| sex          | VARCHAR(6)  | Gender of the Student |

---

## ⚙️ How to Run

1. Open **MySQL Workbench** or any SQL IDE.
2. Copy and execute the script file `Students_Table_Operations.sql`.
3. Observe the results after each step.
4. Modify or extend the script to experiment with your own DDL and DML commands.

---

## 🧠 Learning Outcomes

By practicing this script, you will learn:
- How to create and manage databases.
- How to define table structures and modify them.
- How to insert, update, and delete data effectively.
- How to rename columns and handle schema evolution.
- How to clean and reset data using `TRUNCATE`.

---

## 💬 Example Output Preview

```sql
mysql> SELECT * FROM Students;
+----------+----------+-----+-----------+--------+
| std_roll | std_name | age | Country   | sex    |
+----------+----------+-----+-----------+--------+
| 02       | B        | 21  | Nepal     | Female |
| 03       | C        | 20  | Sri Lanka | Male   |
| 04       | D        | 21  | Bhutan    | Female |
+----------+----------+-----+-----------+--------+

🧰 Tools Used

Database: MySQL

Editor: MySQL Workbench / VS Code (SQL Extension)

Version Control: Git & GitHub

✍️ Author

Chadive Ganesh Reddy
Created with the help of GPT-5, GeeksforGeeks
