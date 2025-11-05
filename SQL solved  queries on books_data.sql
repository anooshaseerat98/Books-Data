-- Queries Related To Books_Data

select *from books_data;
SET SQL_SAFE_UPDATES = 0;


-- Q1:Show all books where the product_disc_price is below 800 and the products_rating is above 4.0.

select *from books_data
where (product_disc_price < 800) 
and (product_rating > 4.0);

-- This query selects all books that have a discounted price lower than 800 and also have a rating higher than 4.0. It filters the records based on these two conditions and returns only the books that satisfy both.

-- Q2:List all books written by ‘John Smith’ that are on promotion and have discount_offered_prcnt greater than 20

select  author ,on_promotion ,discount_offered_prcnt 
from books_data
where (author = 'John Smith') 
and (on_promotion = 'yes') 
and  (discount_offered_prcnt > 20);

-- This query selects books whose author is John Smith, are currently on promotion, and have a discount percentage greater than 20. It returns only the columns: author, promotion status, and discount percentage.

-- Q3: Display books whose language is ‘English’ and type is ‘Fiction’, but product_real_price is greater than 1000.

select *from books_data
where language = 'English'
AND type = 'Fiction'
AND product_real_price > 1000;

-- This query displays all books that are written in the English language and are categorized as Fiction. Additionally, it only includes those books whose real price is greater than 1000. In other words, it filters the data to show only English Fiction books that are priced above 1000.

-- Q4:Find books with a discounted price less than half of the real price.

select *from books_data
WHERE product_disc_price < (product_real_price / 2);

-- This query retrieves all the books where the discounted price is less than half of the actual (real) price. It compares the discounted price with half of the real price and returns only those books that are being sold at more than a 50% discount.


-- Q5:Show all books where products_rating > 4.5 or product_rater > 1000, but not on promotion.

SELECT *
FROM books_data
WHERE (product_rating > 4.5 OR product_raters > 1000)
  AND on_promotion <> 'yes';

-- This query returns books that either have a rating higher than 4.5 or have more than 1000 raters. However, it only includes books that are not currently on promotion. So the results show popular or highly-rated books that are not being promoted.

-- Q6:Display books whose author starts with 'A' and type is not 'Comic'.

select *from books_data
where author like 'A%'
and type != 'comic';

-- This query selects all books where the author's name begins with the letter A, while the book's type is not Comic. It filters out any Comic books and only shows books written by authors whose names start with 'A'.

-- Q7:List books where discount_offered_prcnt is between 10 and 50 and product_disc_price > 500

select *from books_data
where discount_offered_prcnt > 10 and discount_offered_prcnt < 50
and product_disc_price > 500;

-- This query returns all books that are offering a discount between 10% and 50%, and also have a discounted price greater than 500. It filters the data based on both the discount range and the minimum discounted price requirement.

-- Q8: Show the top 5 most expensive books based on product_real_price.

select *from books_data
order by product_real_price desc
limit 5;

-- This query lists the five most expensive books by sorting all books in descending order based on their real price, and then selecting only the top 5 records from the result.

-- Q9: Display all books where book_name contains 'Love' or language = 'Urdu', but discount_offered_prcnt < 15.

SELECT *
FROM books_data
WHERE (book_name LIKE '%Love%' OR language = 'Urdu')
AND discount_offered_prcnt < 15;

-- This query shows books whose titles contain the word Love or are written in the Urdu language. However, it only includes those books that have a discount of less than 15%.

-- Q10:Find books that are on promotion, have a discount over 30%, and rating above 4.2, ordered by product_disc_price ascending.

select *from books_data
where on_promotion = 'yes'
and product_rating > 4.2
and discount_offered_prcnt > 30
order by product_disc_price asc;

-- This query selects books that are currently on promotion, have a discount greater than 30%, and have a rating above 4.2. After filtering these books, the results are arranged in ascending order of their discounted price, meaning the least expensive discounted book will appear first.

-- Q11:List books where the author contains 'Ali' and either type = 'Novel' or language = 'English', sorted alphabetically by book_name.

SELECT *
FROM books_data
WHERE author LIKE '%Ali%'
AND (type = 'Novel' OR language = 'English')
ORDER BY Book_title ASC;

-- This query selects books where the author's name includes the word Ali, and the book is either a Novel or written in English. After filtering, the list is sorted in alphabetical order based on the book title.

-- Q12:Display books where product_disc_price > 700 but product_real_price < 1000, and on_promotion = 'No'.

SELECT *
FROM books_data
WHERE product_disc_price > 700
AND product_real_price < 1000
AND on_promotion = 'No';

-- This query shows the books that have a discounted price greater than 700, while their real/original price is less than 1000, and these books are not on promotion.

-- Q13:Find the 10 cheapest books with rating greater than 4.0, ordered by product_disc_price ascending.

select *from books_data
where product_rating > 4.0
order by product_disc_price asc
limit 10;

-- This query selects books that have a rating higher than 4.0, then sorts them by the discounted price in ascending order (from lowest to highest), and finally shows only the first 10 results, which represent the 10 cheapest books among those highly-rated ones.

-- Q14:Show books where discount_offered_prcnt = 0 (no discount) and products_rating < 3.5, ordered by product_real_price descending

select *from books_data
where discount_offered_prcnt = 0
and product_rating < 3.5
order by product_real_price desc;

-- This query retrieves books that do not have any discount (discount percentage is 0) and have a rating lower than 3.5. After applying these conditions, the results are sorted by the real/original price in descending order, meaning the most expensive book appears first.

-- Q15:List all books where on_promotion = 'Yes' and discount_offered_prcnt > 25, but product_rater < 500, ordered by products_rating descending, limited to 7 results
 
 select *from books_data
 where on_promotion = 'yes'
 and discount_offered_prcnt > 25
 and product_raters < 500
 order by product_rating desc
 limit 7;

-- This query selects books that are on promotion and have a discount greater than 25%, but have fewer than 500 raters. After filtering these books, the results are arranged in descending order of rating so that the highest-rated books appear first, and only the top 7 books from that ordered list are displayed.