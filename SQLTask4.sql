use LibraryDB;
select count(*) as total_books from books;
select count(*) as total_authors from authors;
select count(*) as total_members from members;

select authorid, count(*) as book_count from books group by authorid;
select mid, avg(datediff(returndate, loandate)) as avg_return_days from loans
where returndate is not null group by mid;

select authorid, count(*) as book_count from books
group by authorid having count(*) > 1;