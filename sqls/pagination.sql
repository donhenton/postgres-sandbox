-- pagilia database
Select 
	film_id, title 
from
  	film
order by 
	title
offset 5
fetch next 2 row only;