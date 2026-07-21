with bike as
(
select ride_id 
,      replace(started_at,'"','') start_at
,      replace(ended_at,'"','') end_at 
,      replace(start_station_name ,'"','') start_station_name
,      start_statio_id start_station_id
,      replace(end_station_name  ,'"','') end_station_name
,      end_station_id 
,      start_lat 
,      start_lng start_lag
,      end_lat 
,      end_lng end_lag
,      replace(member_csual  ,'"','') member_casual
from   {{ source('demo', 'bike') }}
where ride_id <> '"bikeid"'
)
select *
from bike