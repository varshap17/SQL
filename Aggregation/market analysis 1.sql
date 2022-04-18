select u.user_id as buyer_id, u.join_date, count(o.buyer_id) as orders_in_2019
from users u
left join orders o
on u.user_id=o.buyer_id and 
o.order_date like "2019%"
group by u.user_id;


