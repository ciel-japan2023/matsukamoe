Drop Table If Exists em_m_item;

Create Table
	em_m_item(
		item_cd			varchar(5)
		,item_name		varchar(20)
		,item_type		varchar(5)
	);

ALTER TABLE em_m_item
	ADD CONSTRAINT em_m_item_pk
	PRIMARY KEY (item_cd);

Comment on Table em_m_item is '品番マスタ';
Comment on Column em_m_item.item_cd is '品番';
Comment on Column em_m_item.item_name is '品名';
Comment on Column em_m_item.item_type is '品種';



Drop Table If Exists em_m_location;

Create Table
	em_m_location(
		location_cd			varchar(30)
		,location_name		varchar(50)
	);

ALTER TABLE em_m_location
	ADD CONSTRAINT em_m_location_pk
	PRIMARY KEY (location_cd);

Comment on Table em_m_location is '拠点マスタ';
Comment on Column em_m_location.location_cd is '拠点コード';
Comment on Column em_m_location.location_name is '拠点名';



Drop Table If Exists em_t_stock_item;

Create Table
	em_t_stock_item(
		location_cd		varchar(5)
		,item_cd		varchar(5)
		,item_qty		numeric(3)
	);

ALTER TABLE em_t_stock_item
	ADD CONSTRAINT em_t_stock_item_pk
	PRIMARY KEY (item_cd, location_cd);

Comment on Table em_t_stock_item is '品番在庫';
Comment on Column em_t_stock_item.location_cd is '在庫場所';
Comment on Column em_t_stock_item.item_cd is '品番';
Comment on Column em_t_stock_item.item_qty is '所有数';