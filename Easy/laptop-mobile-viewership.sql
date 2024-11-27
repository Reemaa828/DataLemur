SELECT sum(case when device_type='laptop' then 1 else 0 END) as laptop_views,
sum(case when device_type='phone' or device_type='tablet' then 1 else 0 END) as mobile_views
from viewership;
