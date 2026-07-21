with cte as
(select to_timestamp(start_at) start_at
 , date(to_timestamp(start_at)) date_start_at
 , hour(to_timestamp(start_at)) hour_start_at
 , {{day_type('start_at')}} day_type
 , {{get_season('start_at')}} season_of_the_year
 from {{ ref('stage_bike') }}
 where start_at <> 'start_at')
select * from cte