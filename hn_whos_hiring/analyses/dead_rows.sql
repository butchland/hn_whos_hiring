-- AUTOGENERATED! DO NOT EDIT! File to edit: notebooks/analysis.ipynb (unless otherwise specified).
select * 
from {{ source('public_datasets','full_stories') }}
where dead is not null
limit 10
