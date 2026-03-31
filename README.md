# Bright_Coffee_shop_Analysis
 Analyzes Bright Coffee Shop sales data to deliver insights for a new CEO. Uses SQL and Excel to evaluate product performance, sales trends, and customer behavior. Includes data cleaning, transformation, dashboards, and recommendations to improve revenue and operations.

 **Project Task**
 
 Task 1: Planning & Architecture (Miro) 
Using Miro or any equivalent whiteboard tool: 
1. Design a Data Flow & Architecture Diagram that outlines: 
• Where the data comes from (source) 
• How it is processed (ETL pipeline) 
• Where it is stored (Snowflake) 
• How it is analyzed and presented 
2. List the Key Insights that the team should deliver, such as: 
• Sales by product category and time intervals 
• High-performing and low-performing products 
• Total revenue calculations 
3. Outline the calculations to be performed: 
• Total Amount = unit_price * transaction_qty 
• Grouping by 30-minute time intervals 
• Total units sold by product type or detail 
You can add on the above, this is just to give you an idea of what is expected from the Miro 
planning.

Task 2: Data Processing in Databricks 
1. Convert the provided Excel data to CSV. 
2. Load the CSV into Snowflake 
3. Perform data transformations: 
• Create a new column: transaction_time_bucket to group transactions into 30- 
minute intervals (Or it can be 1 hour intervals) 
• Cast unit_price properly (some entries use commas, e.g., '3,1' should be converted 
to 3.1) 
• Compute total_amount = unit_price * transaction_qty 
• Use SQL to group by product types, time buckets, etc. 
You can add on the above, this is just to give you an idea of what is expected from the Data 
Processing.

Task 3: Data Analysis in Excel 
After processing the data in Databricks: 
1. Export the processed table to Microsoft Excel or your visualization tool 
2. Create dashboards or pivot tables showing: 
• Total revenue per product type 
• Peak time intervals for sales 
• Quantity of items sold by product category 
• Best-selling product types or details 
• Use charts and graphs to make the story visually appealing

Task 4: Presentation to the CEO 
Prepare a Presentation to deliver insights to the CEO. Include: 
1. Overview of your approach – Create a separate document for your Methodology 
2. Key insights from your analysis (backed by visuals) – Create a separate document for your 
Presentation 
3. Recommendations: 
• Marketing campaigns during slow time slots 
• Stock more of the best-selling items 
• Promote underperforming products 
4. Next Steps: 
• Automate daily sales reporting 
• Track sales performance across multiple locations in the future 
• Implement loyalty programs based on peak customer time slots 
