-- AUTOGENERATED! DO NOT EDIT! File to edit: notebooks/analysis.ipynb (unless otherwise specified).
select 
  id as post_id, 
  title,
  url,
  text,
  `by` as author,
  time as a
   
from {{ source('public_datasets', 'full_stories') }}
order by timestamp desc
