SELECT * FROM sales.transactions;

select count(*) from transactions;

select distinct currency from transactions;

select * from sales.transactions where market_code="Mark001";

select sum(transactions.sales_amount) from sales.transactions where market_code="Mark001";

select distinct product_code from sales.transactions where market_code="Mark001";

select * from transactions where currency="USD";

select sum(transactions.sales_amount),date.year from transactions inner join date ON transactions.order_date=date.date where date.year=2018;

select transactions.*,date.* from transactions inner join date ON transactions.order_date=date.date where date.year=2018 and month_name="January";

select sum(transactions.sales_amount),date.* from transactions inner join date ON transactions.order_date=date.date where date.year=2018 and month_name="January";

select sum(transactions.sales_amount) from transactions inner join date ON transactions.order_date=date.date where date.year=2020 and month_name="March";

select sum(transactions.sales_amount) from transactions inner join date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";

select sum(transactions.sales_amount) from transactions inner join date ON transactions.order_date=date.date where date.year=2020