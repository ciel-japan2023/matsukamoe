select location_name, sum(item_qty)
from em_t_stock_item as t join em_m_location as m
	on t.location_cd = m.location_cd
group by location_name;