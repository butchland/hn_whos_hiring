-- AUTOGENERATED! DO NOT EDIT! File to edit: notebooks/latest_job_posts_build.ipynb (unless otherwise specified).
{{ config(materialized='table') }}
-- select from last 6 months (assuming monthly cadence)
select *
from {{ ref('whos_hiring_articles') }}
order by submit_timestamp desc
limit 6 
