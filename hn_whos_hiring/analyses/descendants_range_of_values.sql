-- AUTOGENERATED! DO NOT EDIT! File to edit: notebooks/analysis.ipynb (unless otherwise specified).
select max(descendants) as max_descendants,
       min(descendants) as min_descendants
from {{ ref('hn_posts') }}
where descendants is not null
