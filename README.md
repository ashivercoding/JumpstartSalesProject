# Project Background
Jumpstart is a fictional SaaS company that sells marketing and sales software packages to other businesses. In operation since 2015, Jumpstart has continued to expand its software offerings and has reached customers from many different industries and countries around the world. 

The company has collected data on the orders placed, order revenue, and customer location and industry over the course of 4 years. This project thoroughly analyzes this data to provide actionable insights that Jumpstart can use to improve their business model.

Insights and recommendations are provided on the following key areas:

- **Revenue & Growth:** Overview of historical sales trends with a focus on Revenue, Number of Orders, and Average Order Value
- **Monthly Sales Trends:** An analysis of monthly sales trends
- **Product Performance:** Assess product sales and profit, focusing on year-over-year (YoY) growth
- **Regional Sales:** Analysis of orders placed and popular products per region

The SQL queries used for this analysis can be found here [[link](https://github.com/ashivercoding/JumpstartSalesProject/blob/main/Jumpstart%20SQL%20Analysis.sql)].

An interactive Tableau dashboard used to report and explore sales trends can be found here [[link](https://public.tableau.com/views/JumpstartSalesDashboards/Revenue?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)].



# Data Structure & Initial Checks

The company's main database structure as seen below consists of one table, sales_dataset, with a total row count of 9,994 records. A description of the table is as follows:

<img src = "https://github.com/user-attachments/assets/aaf62d0a-86e2-429a-8f60-ea709ce8d764" width=200 />




# Executive Summary

### Overview of Findings

Since 2020, Jumpstart has seen a steady increase in sales. Most key performance indicators in 2023 have shown year-over-year increases. Revenue increased by 20.62% and Order Volume increased by 28.64%. On the other hand, Average Order Value (AOV) decreased by -6.24%. The following sections will provide further insights into the areas the company is excelling in and opportunities for growth. Below is the overview page from the interactive Tableau dashboard that is linked above.



![image](https://github.com/user-attachments/assets/12811286-7fe1-4d56-a956-0bfc3c071cbc)




# Insights Deep Dive
### Monthly Sales Trends:

* **Sales are typically above average in September, November, and December.** Sales hit an all-time peak in November 2023 with 447 orders totaling $112,326.47 in revenue. This is likely attributed to the holiday sales spike and end-of-year push that is experienced globally.
  
* On average, September, November, and December account for **approximately 43%** of all orders placed each year. This corresponds with the spike in sales seen during those months. Alternatively, January and February only account for 6.7% of all orders.

* March 2023 saw a 707% increase in profit compared to the previous month. This can be attributed to **5 purchases of the Alchemy software that made up 60%** of the total profit for that month.
  
* January, April, and July consistently experience a reduction in profit compared to the previous month. 
  

![Jumpstart Monthly Trends](https://github.com/user-attachments/assets/ffc5c718-e398-413d-8ae1-ebbae21386df)



### Product Performance:

* **4 products account for 57% of Jumpstart's revenue:** Contact Matcher, FinanceHub, Site Analytics, and Marketing Suite - Gold. However, these products only account for 38% of the company's total profit. In 2023, they generated $408K in Revenue but only $29K in profit, 32% of the company's total.
  
* Alchemy made up 27% of the overall profit for 2023, for a total of $25K stemming from only 22 orders. Profit generated from Alchemy has been trending upward year over year since 2020.
  
* Marketing Suite is consistently costing the company money and only accounts for 3% of total orders. Similary, Storage, which only makes up 2% of orders placed, usually breaks even.
  
* Finance, energy, and tech industries accounted for 48% of all orders placed in 2023, with a total revenue of $350K. ContactMatcher, Site Analytics, and Financehub were top performers for each industry.

![image](https://github.com/user-attachments/assets/5f3930e0-57b7-49b6-9da4-ecfb17f7a4b7)



### Regional Sales:

* **The region of Europe, Middle East, and Africa (EMEA) accounts for 43% of all sales in 2023 and the Americas (AMER) accounts for 39%.** The combined revenue from both regions totaled at $734K, a 20% increase over 2022.
  
* The **United States and United Kingdom** both have significantly higher sales than any other country 
  

![image](https://github.com/user-attachments/assets/397385fa-3a6a-40da-b89b-18711bd3ab8d)





# Recommendations:

Based on the insights and findings above, the following is recommended to the Sales and Marketing teams:

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  

  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* row_id was assumed to be a unique indicator for each product purchased and was used to verify that there were no duplicate rows in the dataset.
