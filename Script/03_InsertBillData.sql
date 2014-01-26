--BEGIN 更新辅料采购单的NC导入的临时表
call T_updateAuxiMatTemp_NC_SYNC(1)
@
select count(1) from tra_fl_order_main_temp
	   where isprocessed = 'N' and issync = 'N'
@
select count(1) from tra_fl_order_detail_temp
	   where isprocessed = 'N' and issync = 'N'
@
--END 更新辅料采购单的NC导入的临时表

--BEGIN 更新辅料采购单的各类ID
call T_updateAuxiMat_NC_SWITCH(1)
@
select count(a.mainid) from tra_fl_order_main a
	   where exists(select 1 from tra_fl_order_main_temp b where a.pk_corp = b.pk_corp)
@
select count(a.detailid) from tra_fl_order_detail a
	   where exists(select 1 from tra_fl_order_detail_temp b where a.pk_corp_d = b.pk_corp_d)
@
select count(a.detailid) from tra_fl_order_detail a
	   where not exists(select 1 from tra_fl_order_main b where a.mainid = b.mainid)
@
select count(a.pk_corp_d) from tra_fl_order_detail_temp a
	   where not exists(select 1 from tra_fl_order_main_temp b where a.pk_corp = b.pk_corp)
@
--END 更新辅料采购单的各类ID

