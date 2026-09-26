select top 10
* from customer
--Query= total revenue by male vs female customers

select gender ,sum(purchase_amount) as revenue
from customer
group by gender

--Query2;=which customers used a discount but still spent more than the average purchase amount?

select customer_id,purchase_amount
from customer where discount_applied='yes' and purchase_amount>=(select AVG(purchase_amount)from customer)

--Query 3:which are the top 5 products with the highest average review rating?

SELECT TOP 5
    item_purchased,
    Round(AVG(review_rating),2) AS [Average Product Rating]
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC;
--Query4= compare the average purchase amount btw standard and Express Shipping
select shipping_type,
Round (Avg(purchase_amount),2)
from customer
where shipping_type in ('Standard','Express')
group by shipping_type

--Query 5. Do subscribed customer spend more ?compare average spend and total revenue 
-- between subscribers and non-subscribers
  
select subscription_status,
count(customer_id)as total_customers,
Round(Avg(purchase_amount),2) as avg_spend,
sum(purchase_amount) as total_revenue
from customer
group by subscription_status
order by total_customers,avg_spend desc;

--Query 6: which 5 product have the highest percentage of purchase with discounts applied?

SELECT TOP 5
    item_purchased,
    ROUND(
	100.0 * 
        SUM(CASE 
                WHEN discount_applied = 'yes' THEN 1 
                ELSE 0 
            END) / COUNT(*),
        2
    ) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC;

--Query 7:  segment customers into new,returning and loyal based on their total number
--- of previous purchases ,and show the count of each segments
select top 5 * from customer

 with customer_type
 as
 (select customer_id,previous_purchases,
 case 
 when previous_purchases =1 then 'New'
 when previous_purchases between 2 and 10 then 'returning'
 else 'Loyal'
 end as customer_segment
 from customer)

 select customer_segment,count(*) as "Number of Customers"
 from customer_type
 group by customer_segment

-- Query*: what are the top 3 most purchased products within each category

with item_counts as (
select category,
item_purchased,
count(customer_id)as total_orders,
row_number() over (partition by category order by count(customer_id) desc) as item_rank
from customer 
group by category,item_purchased
)
select item_rank ,category,item_purchased,total_orders
from item_counts
where item_rank<=3;

--Query 9: Are customer who are repeat buyers(more than 5 previous purchases)also likely to subscribe?
select subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases>5
group by subscription_status

--Query 10; what is the revenue contribution of each age group?

select age_group,
sum(purchase_amount)as total_revenue
from customer
group by age_group
order by total_revenue desc ;


















