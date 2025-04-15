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
  
* On average, September, November, and December account for approximately 43% of all orders placed each year. This corresponds with the spike in sales seen during those months. Alternatively, January and February only account for 6.7% of all orders.

* March 2023 saw a 707% increase in profit compared to the previous month. This can be attributed to 5 purchases of the Alchemy software that made up 60% of the total profit for that month.
  
* January, April, and July consistently experience a reduction in profit compared to the previous month. 
  

![Jumpstart Monthly Trends](https://github.com/user-attachments/assets/ffc5c718-e398-413d-8ae1-ebbae21386df)



### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]




# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
