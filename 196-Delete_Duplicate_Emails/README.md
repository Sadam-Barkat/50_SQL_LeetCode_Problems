# 196. Delete Duplicate Emails

## Problem Statement
Write an SQL query to delete all duplicate emails in the `Person` table, keeping only the **smallest `id`** for each duplicate email.

### **Table: `Person`**
| id  | email            |
|-----|------------------|
| 1   | john@example.com |
| 2   | bob@example.com  |
| 3   | john@example.com |

### **Expected Result after Deletion**
| id  | email            |
|-----|------------------|
| 1   | john@example.com |
| 2   | bob@example.com  |


