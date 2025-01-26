# Restaurant Growth

## Problem Statement

In this problem, you are tasked with helping a restaurant chain analyze its growth over time. Given multiple tables containing data about orders, pizzas, and sales, you need to write SQL queries that extract meaningful insights.

### Tables:

1. **orders**: Contains order details including date and total amount.
    - `order_id` (INT): Unique identifier for each order.
    - `order_date` (DATE): The date when the order was placed.
    - `total_amount` (DECIMAL): The total cost of the order.

2. **pizzas**: Contains information about the pizzas offered by the restaurant.
    - `pizza_id` (INT): Unique identifier for each pizza.
    - `pizza_name` (VARCHAR): Name of the pizza.
    - `price` (DECIMAL): Price of the pizza.

3. **order_details**: Contains the details of the pizzas ordered in each order.
    - `order_id` (INT): The unique identifier of the order (foreign key to `orders`).
    - `pizza_id` (INT): The pizza ordered (foreign key to `pizzas`).
    - `quantity` (INT): Number of pizzas ordered.

4. **pizza_type**: Contains information about different pizza types.
    - `pizza_id` (INT): Unique identifier for each pizza (foreign key to `pizzas`).
    - `type` (VARCHAR): Type of pizza (e.g., "Vegetarian", "Non-Vegetarian").

### Problem Requirements:

1. **Identify the growth trend**: 
   - Write a SQL query that identifies the overall growth of the restaurant's sales over time.
   
2. **Track pizza popularity**: 
   - Write a query that tracks which pizzas are the most ordered, and how this trend changes over different periods.
   
3. **Sales by type**: 
   - Write a query to calculate the sales growth based on pizza types (Vegetarian/Non-Vegetarian).

### Notes:

- The data is periodically updated, so your solution should be efficient enough to handle large datasets.
- Ensure your SQL solution considers proper JOIN operations and aggregation where necessary.

## Expected Output:

The SQL query should return meaningful insights like:
- Total sales per month or quarter.
- The most ordered pizza per period.
- Sales split by pizza type.

## Constraints:

- You are allowed to assume that data in the tables is properly formatted and normalized.
- Your solution should handle edge cases where there might be missing or incomplete data.

---

### Instructions:

1. Implement your SQL solution based on the problem requirements.
2. Test your solution on multiple cases to ensure accuracy.
3. Submit your solution once it is verified to be correct.
