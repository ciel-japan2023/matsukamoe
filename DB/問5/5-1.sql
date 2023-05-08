select item_name, item_qty
from em_m_item as m join em_t_stock_item as t
	on m.item_cd = t.item_cd
where location_cd = 'CN001'
order by item_qty asc;