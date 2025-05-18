select EMP.* from  DBT.RAW_DATA.EMPLOYEE EMP,
{{ref('emp_dept_avg')}} AVGTBL
where EMP.SALARY< AVGTBL.AVG_SAL and EMP.departmentno=AVGTBL.departmentno