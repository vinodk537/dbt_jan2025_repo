{% snapshot orders_snapshot %}

{{
    config(
      target_database='DBT',
      target_schema='CURATED_DATA',
      unique_key='order_id',
      strategy='timestamp',
      updated_at='inserted_updated_at',
    )
}}

select * from RAW_DATA.orders_latest

{% endsnapshot %}