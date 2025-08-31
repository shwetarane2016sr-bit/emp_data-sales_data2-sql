show databases;
use college;

-- 1. View all employees
select * from emp_data;

-- 2. Top 5 highest paid employees
select Name,Department,Salary from Emp_Data order by salary desc limit 5;

-- 3. Average salary by department
select Department,avg(salary) as Avg_Dept_Salary from Emp_Data group by Department;

-- 4. Employees joined after 2020
select Name,Department,Joiningdate from Emp_Data where Joiningdate > '2020-12-31';

-- 5. Rank employees by performance
select Name,Department,Performancescore, Rank () over(order by performancescore desc) As Rank_score from emp_data;

-- 6. Department with highest average performance
select department, avg(Performancescore) as High_Avg_Performancescore from Emp_Data group by Department order by High_Avg_Performancescore limit 1;

-- 7. Total salary expense per department
Select Department,sum(Salary) as Total_Salary_Expenses from Emp_Data group by Department order by Total_Salary_Expenses desc;

-- 8. Employees with salary above department average
select e.Name,e.Department,e.Salary from Emp_Data e Where e.salary > (select avg(salary) from emp_data where department = e.department);

-- Sales Data Analysis (sales_data2.csv)

-- 9. View all sales records
select * from sales_data2;

-- 10. Total revenue generated
Select sum(Revenue) as Total_Revenue from sales_data2;

-- 11. Revenue by region
select Region,sum(Revenue) as Region_Revenue from Sales_Data2 group by Region order by Region_Revenue desc;

-- 12. Monthly revenue trend
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(Revenue) AS Monthly_Revenue FROM sales_data2 GROUP BY Month ORDER BY Month;

-- 13. Top 5 products by revenue
select Product,sum(Revenue) as Product_Revenue from sales_data2 group by Product order by Product_Revenue desc limit 5;

-- 14. Category-wise revenue split
select Category,sum(revenue) as Category_Revenue from sales_data2 group by Category;

-- 15. Average revenue per order
Select avg(Revenue) as Avg_Revenue_Per_Order from sales_data2 ;

-- 16. Best performing region by total quantity sold
select Region,sum(Quantity) as Total_Qty from Sales_data2 group by Region order by Total_Qty limit 1;



