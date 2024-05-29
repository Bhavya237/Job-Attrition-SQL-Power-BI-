SELECT TOP (1000) [emp_no]
      ,[gender]
      ,[marital_status]
      ,[age_band]
      ,[age]
      ,[department]
      ,[education]
      ,[education_field]
      ,[job_role]
      ,[business_travel]
      ,[employee_count]
      ,[attrition]
      ,[attrition_label]
      ,[job_satisfaction]
      ,[active_employee]
  FROM [HR Database].[dbo].[hrdataa]
  select * from hrdataa

 Q1 What is the total number of employees
 select sum(employee_count)as total_no_of_employees from hrdataa

 Q2 What is the attrition number?
 select count(attrition) as attrition_count from hrdataa
 where attrition=1

 Q3 Attrition Rate
  select Round((( select count(attrition) as attrition_count from hrdataa
 where attrition=1)/sum(employee_count))*100,2) as attrition_Rate from hrdataa

 Q4 Active Employees
 select count(active_employee) from hrdataa
 where active_employee=1

 Q5 What is the average age
 select avg(age) from hrdataa 

 Q6 Attrition by Gender
 select count(attrition)as attrition_count ,gender from hrdataa
 where attrition=1
 group by gender

 Q7 Department wise attrition
 select  count(attrition)as attrition_count ,department from hrdataa
 where attrition=1
 group by department

 Q8 No of Employees by age group
 select sum(employee_count),age_band from hrdataa
 group by age_band

  Q Education feild wise attrition
  select education_field,count(attrition) from hrdataa 
  where attrition=1
  group by education_field

  Q Attrition rate by gender for different age group
   select count(attrition)as attrition_count ,gender,age_band from hrdataa
 where attrition=1
 group by gender,age_band

 Q Job satisfaction Rating
 select sum(employee_count)as total_no_of_employees ,job_role,job_satisfaction from hrdataa
 group by job_satisfaction,job_role
 order by job_satisfaction



 Q7
