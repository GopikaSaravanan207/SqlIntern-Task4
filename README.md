## 📄 README – Task 4: Aggregate Functions and Grouping

### 📝 Objective:

The purpose of this task is to learn how to use SQL aggregate functions such as `SUM`, `COUNT`, and `AVG`, along with `GROUP BY` and `HAVING` clauses, to **summarize and analyze data** in the `LibraryDB` database.

### 🛠 Tools Used: MySQL Workbench

### ✅ Concepts and Queries Practiced:

1. **Counting total records**:

   " Total number of books:"
     SELECT COUNT(*) AS total_books FROM Books;
   
   " Total number of authors:"
     SELECT COUNT(*) AS total_authors FROM Authors;
   
     "Total number of members:"
     SELECT COUNT(*) AS total_members FROM Members;

3. **Using aggregate functions with GROUP BY**:

   " Count how many books each author has written:"
     SELECT authorId, COUNT(*) AS book_count
     FROM Books
     GROUP BY authorId;
    
    "Average number of days taken for return per member (assuming dates are populated):"
     SELECT mid, AVG(DATEDIFF(returndate, loandate)) AS avg_return_days
     FROM Loans
     WHERE returndate IS NOT NULL
     GROUP BY mid;

4. **Filtering groups using HAVING**:

   "Authors who have written more than 1 book:"
     SELECT authorId, COUNT(*) AS book_count
     FROM Books
     GROUP BY authorId
     HAVING COUNT(*) > 1;
  

### 📌 Outcome:

* Learned to apply **aggregate functions** to derive meaningful insights from data.
* Understood how to **group data** using `GROUP BY` and filter those groups using `HAVING`.
* Practiced summarizing and analyzing datasets in a structured way.
