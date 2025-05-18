{{ 
config(
materialized='ephemeral') 
}}

select departmentno,avg(salary) as avg_sal from DBT.RAW_DATA.EMPLOYEE
group by departmentno