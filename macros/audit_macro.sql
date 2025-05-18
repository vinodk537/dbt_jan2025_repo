{% macro audit_macro(model_name,status) %}

create table if not exists curated_data.audit_tbl (model_name varchar(100),status varchar(100),run_ts timestamp_ntz);

insert into curated_data.audit_tbl 
values ('{{model_name}}' ,'{{status}}',current_timestamp :: timestamp_ntz);

{% endmacro %}