select item_name, sum(item_qty)
from em_m_item as m join em_t_stock_item as t
	on m.item_cd = t.item_cd
group by item_name
order by sum(item_qty) desc;