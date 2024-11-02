# Write your MySQL query statement below
select request_at as Day,
round(sum(if(status != "completed", 1, 0))/count(status), 2) as "Cancellation Rate"
from trips
where request_at <= "2013-10-03" and request_at >= "2013-10-01"
and client_id not in (select users_id from users where banned = "Yes" and role = "client")
and driver_id not in (select users_id from users where banned = "Yes" and role = "driver")
group by request_at