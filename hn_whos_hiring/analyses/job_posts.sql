-- AUTOGENERATED! DO NOT EDIT! File to edit: notebooks/whos_hiring.ipynb (unless otherwise specified).
with hiring as
( select post_id,
  from {{ ref('whos_hiring_articles') }}
),
job_posts as 
(
  select p.*
  from {{ ref('hn_posts') }} p
  inner join hiring h
  on p.parent_id = h.post_id
)
select *  
from job_posts
limit 50
