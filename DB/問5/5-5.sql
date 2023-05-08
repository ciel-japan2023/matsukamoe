select location_name, code_name, sum(item_qty)
from em_m_location as m_l join em_t_stock_item as t
		on m_l.location_cd = t.location_cd
	join em_m_item as m_i
		on t.item_cd = m_i.item_cd
	join em_m_code as m_c
		on m_i.item_type = m_c.code_value
where code_type='item_type'
group by location_name, code_name
having sum(item_qty) >= 30
order by location_name desc, code_name asc;