-- AUTOGENERATED! DO NOT EDIT! File to edit: notebooks/analysis.ipynb (unless otherwise specified).
select 
  id as post_id, 
  title,
  url,
  text,
  `by` as author_id,
  time as pub_data
   
from {{ source('public_datasets', 'full_stories') }}
order by timestamp desc
