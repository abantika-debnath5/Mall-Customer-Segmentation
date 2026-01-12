-- ANALYTICAL QUERIES

# 1. Average Distribution 
SELECT COUNT(*) AS total_customers,
AVG(age) AS avg_age,
AVG(annual_income) AS avg_income,
AVG(spending_score) AS avg_spending
FROM mall_customers;

# 2. Gender-Based Behaviour
SELECT gender,
AVG(annual_income) AS avg_income,
AVG(spending_score) AS avg_spending
FROM mall_customers
GROUP BY gender;

# 3. Age Segmentation
SELECT 
    CASE 
        WHEN age < 25 THEN 'Young'
        WHEN age BETWEEN 25 AND 40 THEN 'Adult'
        WHEN age BETWEEN 41 AND 60 THEN 'Middle-Aged'
        ELSE 'Senior'
	END AS age_group,
    COUNT(*) AS customers,
    ROUND(AVG(spending_score), 2) AS avg_spending
FROM mall_customers
GROUP BY age_group
ORDER BY avg_spending DESC;

# 4. Income vs Spending segmentation
SELECT
      CASE
          WHEN annual_income < 40 THEN 'Low Income'
          WHEN annual_income BETWEEN 40 AND 70 THEN 'Mid Income'
          ELSE 'High Income'
	  END AS income_group,
      CASE
	      WHEN spending_score < 40 THEN 'Low Spending'
          WHEN spending_score BETWEEN 40 AND 70 THEN 'Mid Spending'
          ELSE 'High Spending'
	  END AS spending_group,
      COUNT(*) AS customers
FROM mall_customers
GROUP BY income_group, spending_score
ORDER BY customers DESC;
 
# 5. Top Spenders
SELECT customer_id, age, annual_income, spending_score
FROM (
    SELECT *,
           RANK() OVER (ORDER BY spending_score DESC) AS rnk
    FROM mall_customers
) t
WHERE rnk <= 10;
