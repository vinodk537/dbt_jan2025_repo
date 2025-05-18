

{{ config(
          pre_hook="{{audit_macro('emp_gt_avg','STARTED')}}",
          post_hook="{{audit_macro('emp_gt_avg','COMPLETED')}}"
   )
}}


select EMP.* from  DBT.RAW_DATA.EMPLOYEE EMP,
{{ref('emp_dept_avg')}} AVGTBL
where EMP.SALARY> AVGTBL.AVG_SAL and EMP.departmentno=AVGTBL.departmentno