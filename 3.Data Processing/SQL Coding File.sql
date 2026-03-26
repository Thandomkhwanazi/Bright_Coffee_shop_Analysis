---DATES
SELECT transaction_date AS purchase_date,
       dayname(transaction_date) AS day_name,
       monthname(transaction_date) AS month_name,
       dayofmonth(transaction_date) AS day_of_month,

       CASE 
           WHEN dayname(transaction_date) IN ('Sun','Sat') THEN 'Weekend'
           ELSE 'Weekday'
       END AS day_classification,

---date_format(transaction_date, 'HH:MM:SS') AS purchase_time 
       CASE
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '00:00:00' AND '08:59:59' THEN '01. Rush hour'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '09:00:00' AND '11:59:59' THEN '02. Mid morning'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '12:00:00' AND '15:59:59' THEN '03. Afternoon'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '16:00:00' AND '17:59:59' THEN '04. Evening'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '18:00:00' AND '23:59:59' THEN '05. Night'
        
      END AS time_buckets,

--- COUNT of ID's 
      COUNT(Distinct transaction_id) AS number_of_sales,
      COUNT(Distinct product_id) AS number_of_products,
      COUNT(Distinct store_id) AS number_of_stores,
    
--- Revenue 
      SUM(transaction_qty*unit_price) AS revenue_per_day,

      CASE 
          WHEN revenue_per_day <=50 then '01. Low spend'
          WHEN revenue_per_day BETWEEN 51 AND 100 THEN '02. Medium spend'
          ELSE '03. High spend'
      END AS spent_backet, 

--- Categorical Columns 
product_category,
store_location,
product_detail,
product_type 

FROM  `workspace`.`default`.`bright_coffee_shop_analysis`

GROUP BY transaction_date,
         dayname(transaction_date),
         monthname(transaction_date),
         dayofmonth(transaction_date),

         CASE 
           WHEN dayname(transaction_date) IN ('Sun','Sat') THEN 'Weekend'
           ELSE 'Weekday'
       END,

        CASE
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '05:00:00' AND '08:59:59' THEN '01. Rush hour'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '09:00:00' AND '11:59:59' THEN '02. Mid morning'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '12:00:00' AND '15:59:59' THEN '03. Afternoon'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '16:00:00' AND '17:59:59' THEN '04. Evening'
          WHEN date_format(transaction_date, 'HH:MM:SS') BETWEEN '18:00:00' AND '23:59:59' THEN '05. Night'
      END,

    
      product_category,
      store_location,
      product_detail,
      product_type;
