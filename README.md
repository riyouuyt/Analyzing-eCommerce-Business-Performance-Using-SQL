# Analyzing-eCommerce-Business-Performance-Using-SQL

## Project Objective:
In a company, measuring business performance is crucial for tracking, combining, and assessing the success or failure of various business processes. This project aims to analyze the business performance of an eCommerce company by considering several key business metrics, namely customer growth, product quality, and payment type.

## Tools:
- **PostgreSQL (RDBMS):** Database Analysis

  ![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/9b8b63e6-39c2-4515-a6da-f43e19641e3b)

- **Excel:** For Visualization

  ![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/1b7085f9-3e6d-4e0c-aa27-61c7a02e69ea)

- **Google Drive:** Query Documentation
  
  ![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/42b3b706-515c-4afb-bf26-5cad28f43390)

## **Dataset Information:**
  The datasets used in this project are provided by Rakamin. They are included in a zip file, and you can find more information about the dataset [here](https://drive.google.com/drive/folders/1dWjSI8HfJgllzcUttcK2YDeSWYaM3Aw_?usp=drive_link).

  By systematically employing these tools to analyze the datasets stored in PostgreSQL, this project will offer valuable insights into the performance of the eCommerce business. These insights will guide strategic decisions to optimize customer growth, enhance product quality, and streamline payment processes, ultimately contributing to the company's overall success and competitiveness in the digital marketplace.


## **For more information about the Query Click Here:**
  [Query Details](https://drive.google.com/drive/folders/1V2UJmgmIDJRdA3BgV8c9oTY0Xzdfo8aJ?usp=drive_link)



## Data Preparation:
In the data preparation phase, we followed two crucial steps:

  ### 1. Table Creation:
We created the necessary tables using SQL queries to structure the data. These tables will serve as the foundation for our analysis.

  ### 2. Data Import:
We imported the data into these tables using the COPY command within PostgreSQL's psql tool. This process involved organizing and assembling essential datasets, including Seller, Customer, Order Items, Order Payment, Geolocation, Product, Order Review, and Order datasets.

This meticulous data preparation lays the groundwork for our comprehensive analysis of eCommerce business performance, enabling us to derive actionable insights from the collected information.

### Entity-Relationship Diagram (ERD):
The next critical step in our project is the creation of an Entity-Relationship Diagram (ERD). This diagram will visually represent how the tables are interconnected, providing a deeper understanding of the relationships between different aspects of our eCommerce business data. The ERD will play a pivotal role in facilitating comprehensive data analysis and informed decision-making in the subsequent stages of our project.

For more detailed information on how to run queries, perform data analysis, and visualize results, please refer to the project documentation.
Thank you for joining us on this journey to analyze and enhance eCommerce business performance using SQL.

![ERD_business_eCommerce](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/c59cd6ae-3df8-4723-8ff6-88568d633c7d)

## **Annual Customer Activity Growth Analysis**

### Annual Report:

Over the three-year analysis of this eCommerce business, it is evident that the platform has achieved substantial growth and customer retention. In 2017, there was a remarkable surge in the number of monthly active users, averaging 3,758. This growth was mirrored in the influx of new customers, which reached an impressive 43,708. Equally noteworthy was the retention of 1,256 repeat customers.

The following year, 2018, continued to display positive trends. The average number of monthly active users remained robust at 5,401, indicating sustained user engagement. New customer acquisition remained strong with 52,062 new sign-ups, while 1,167 loyal customers continued to place repeat orders.

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/f49690a7-73c2-436f-923b-ab30013b610c)

### Monthly Average Users (MAU) and Average Orders

**MAU:** The analysis reveals the following MAU trends:
 - In 2016, we had 110 average monthly active users.
 - This number saw a significant surge in 2017, reaching 3,758 MAU.
 - In 2018, the upward trend continued with 5,401 MAU.

### Customer Order Behavior

On average, customers placed approximately 1 order each year throughout the analyzed period, reflecting the consistency in customer order behavior.

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/5de5c7a1-81e0-491e-aaa4-cc3e88735fca)

### New and Repeat Customer Comparison

The analysis highlights the trends in acquiring new customers:

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/5f14e602-f281-4a49-86a7-9feb07db26bf)

* **New Customers:**
  - In 2016, we successfully acquired 326 new customers.
  - The number of new customers saw an impressive growth in 2017, with 43,708 new customers.
  - In 2018, we added 52,062 new customers to our platform.

* **Repeat Customer Retention:**
  - In 2016, we had 3 repeat customers.
  - By 2017, this number substantially increased to 1,256 repeat customers.
  - In 2018, we retained 1,167 repeat customers, showcasing our commitment to customer loyalty.


## **Annual Product Category Quality Analysis**

### Revenue Report

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/bb640860-3260-4f86-92b1-7e29a2eec0b3)

In our analysis of the e-commerce business performance from 2016 to 2018, several key observations have emerged regarding revenue. These observations shed light on our business's financial growth and trends:

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/a3b86e65-155e-4e4d-b08b-8d8621d544f1)

* **Steady Revenue Growth:** Over the three-year period, our total revenue demonstrated steady growth. We started in 2016 with $46,653.74 in total revenue, which increased significantly to $6,921,535.24 in 2017 and further to $8,451,584.77 in 2018. This upward trajectory indicates the increasing popularity of our platform and the potential for further growth.

* **Significant Revenue Leap:** The year 2017 saw a remarkable leap in revenue, reaching $6,921,535.24. This spike indicates a substantial increase in customer engagement and purchases on our platform, reflecting the effectiveness of our marketing and sales efforts during that year.

* **Sustained Growth in 2018:** It is noteworthy that our revenue continued to grow in 2018, reaching $8,451,584.77. This sustained growth reaffirms our platform's ability to maintain and build on the gains achieved in the previous year.

### Cancellation Report

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/6d7871ea-3c14-40f5-93da-d7fd64b9259a)

Our analysis of order cancellations for the years 2016 to 2018 has unveiled important insights into customer behavior and order management. These observations shed light on the impact of cancellations on our business and provide an opportunity for improvement:

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/c485ffd5-c7b4-4fdc-974b-7f2a78c987d5)

* **Consistent Growth in Cancellations:** The data shows a consistent increase in the number of order cancellations across the three years analyzed. In 2016, there were 26 cancellations, which rose to 265 in 2017, and further increased to 334 in 2018. This upward trend indicates a need for a closer examination of our order fulfillment processes and customer experience.

* **Identification of Cancellation Trends:** While the overall cancellations increased, there is also an opportunity to identify specific categories that may be more prone to cancellations. Understanding which product categories have the highest cancellation rates is crucial for addressing potential issues, improving customer satisfaction, and reducing revenue loss.

* **Need for Focused Efforts:** The consistent growth in cancellations underlines the importance of developing strategies to minimize cancellations. These strategies may include improving product descriptions, enhancing the quality of products, and providing more accurate delivery estimates. By addressing these issues, we can create a more positive and seamless shopping experience for our customers.

* **Potential for Revenue Recovery:** Minimizing cancellations not only improves the customer experience but also has the potential to positively impact revenue. By reducing cancellations, we can retain more orders, which in turn can lead to increased revenue and customer loyalty.

### Product Category Analysis Report

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/40dff502-16ab-4170-b911-cedf33bb9f91)

In the years 2016 to 2018, our e-commerce platform displayed promising trends in both revenue and order cancellations:

1. Top revenue from Product Based on Year:

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/16561424-1c49-4b2a-beb3-fce1a385ac89)

**Revenue Performance:** We observed consistent growth in total revenue, starting at $46,653.74 in 2016 and reaching $8,451,584.77 in 2018. Notably, the Bed & Bath Table category excelled in revenue in 2017, while the Health & Beauty category took the lead in 2018.

2. Top Cancellation Product based on Year:

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/ec732b2b-9f15-4ff1-adaa-f864aef51303)

**Cancellation Trends:** Order cancellations saw a steady increase over the years, emphasizing the importance of refining our order management processes. In 2016, Toys had the lowest cancellations, and in 2017, the Sports & Leisure category faced the most cancellations.

## **Analysis of Annual Payment Type Usage**

### Total Favorite Payment Types (All Time)

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/820b13ff-7339-49dc-b523-9f14605aa1b2)

The data reveals the distribution of payment types used across all transactions. The most favored payment type is "credit card," with a substantial total of 76,795 uses. Following closely is "boleto" with 19,784 uses, "voucher" with 5,775 uses, "debit card" with 1,529 uses, and "not defined" with 3 uses. These insights provide valuable information about customer payment preferences.

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/d0e47d64-f956-4166-8ea1-6015c5113b13)

### Total Favorite Payment Types by Year

Analyzing payment preferences year by year provides a more detailed perspective:

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/b344ec40-f0ce-48df-80be-3b65b3e12bdd)

**In 2016:**
- "Credit card" was the most preferred payment type with 258 uses.
- Followed by "boleto" with 63 uses.
- "Voucher" with 23 uses.
- "Debit card" with 2 uses.

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/92d26815-1054-45d8-9e05-4cd66d53e134)

**In 2017:**
- "Credit card" continued to lead with 34,568 uses.
- Followed by "boleto" with 9,508 uses.
- "Voucher" with 3,027 uses.
- "Debit card" with 422 uses.

![image](https://github.com/riyouuyt/Analyzing-eCommerce-Business-Performance-Using-SQL/assets/122600889/77964cdb-d6cd-4d75-8148-6ab7b3904b41)

**In 2018:**
- "Credit card" remained dominant with 41,969 uses.
- Followed by "boleto" with 10,213 uses.
- "Voucher" with 2,725 uses.
- "Debit card" with 1,105 uses.
- "Not defined" with 3 uses.

These insights highlight shifting payment preferences over the years, with "credit card" consistently favored as the primary payment method, closely followed by "boleto." Understanding these trends can help businesses tailor their payment options to meet customer needs and expectations.


## **Business Recommendations**

To enhance the performance and growth of our eCommerce business, we have identified several key recommendations:

1. Focus on High-Revenue Categories:

The consistent revenue contribution of the "health and beauty" category makes it crucial to prioritize. By expanding the range of products and strategically marketing within this category, the company can effectively capitalize on its popularity, driving further revenue growth.

2. Enhance Customer Engagement:

While the total revenue is growing, customer engagement remains a challenge due to low average order frequency. To address this, the company should develop targeted marketing campaigns and loyalty programs. These efforts will encourage repeat purchases, ultimately increasing the average number of orders per customer and boosting revenue.

3. Optimize Payment Methods:

Credit cards are the preferred payment method, indicating customer preference. To maintain customer trust, the company should ensure the security and reliability of credit card transactions. At the same time, it should continue to accept alternative payment methods like boleto and vouchers to cater to diverse customer preferences.

4. Proactive Cancellation Management:

With an increase in cancellations over the years, it's essential to mitigate this risk. To do so, the company should identify the top cancellation category products, address customer concerns or product issues in these categories, and implement feedback mechanisms to enhance product quality. This proactive approach will reduce cancellations and safeguard revenue.

These recommendations are designed to improve our business's overall performance, customer satisfaction, and revenue growth. By focusing on high-revenue categories, enhancing customer engagement, optimizing payment methods, and proactively managing cancellations, we can position our eCommerce business for continued success and competitiveness in the market.


---

## License

This project is licensed under the [MIT License](LICENSE).

These recommendations are designed to improve our business's overall performance, customer satisfaction, and revenue growth. By focusing on high-revenue categories, enhancing customer engagement, optimizing payment methods, and proactively managing cancellations, we can position our eCommerce business for continued success and competitiveness in the market.




