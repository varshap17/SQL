select customer_id, count(customer_id) as count_no_trans
from Visits V
left join Transactions T
on V.visit_id=T.visit_id
where amount is null
group by customer_id;

