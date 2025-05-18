{{ config(materialized='table',
          alias="EMP_AVG_DEPT",
          pre_hook="{{remove_dups_ts('EMPLOYEE_CURATED','EMPLOYEE','empid','inserted_at')}}",
   )
}}

select departmentno,avg(salary) as avg_sal from CURATED_DATA.EMPLOYEE_CURATED
group by departmentno