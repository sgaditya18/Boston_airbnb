
----- hosts with most number of reviews 
select r.listing_id,l.name, l.host_name,count(*) as num_reviews
from reviews r, listings l
where r.listing_id=l.id
group by listing_id
order by num_reviews desc
