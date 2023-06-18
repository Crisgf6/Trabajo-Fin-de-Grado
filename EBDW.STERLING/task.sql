create or replace task EBDW.STERLING.YFS_ORDER_HEADER
	warehouse=STAGING_TASK
	schedule='10 minute'
	as call sterling.sp_update_tables('yfs_order_header_vw','yfs_order_header','order_header_key');