select u.name, sum(if(r.distance is NULL,0,r.distance)) as travelled_distance 
from users u 
left join Rides r on
u.id=r.user_id
group by u.name
order by travelled_distance desc, u.name asc;

