--BEGIN NC���ϵ������ձ�
-- import from './data/TRA_AUXI_MATERIAL_TEMP.csv' of del 
-- 	   insert into TRA_AUXI_MATERIAL_TEMP 
-- @
select * from TRA_AUXI_MATERIAL_TEMP
@
--END NC���ϵ������ձ�

--BEGIN NC���ϲɹ�������
-- import from './data/TRA_FL_ORDER_MAIN_TEMP.csv' of del 
-- 	   insert into TRA_FL_ORDER_MAIN_TEMP 
-- @
-- update TRA_FL_ORDER_MAIN_TEMP set memo = null
-- 	   where memo = '(null)'
-- @
-- update TRA_FL_ORDER_MAIN_TEMP set isprocessed = 'N'
-- 	   where isprocessed is null
-- @
-- update TRA_FL_ORDER_MAIN_TEMP set issync = 'N'
-- 	   where issync is null
-- @
-- commit;@
select * from TRA_FL_ORDER_MAIN_TEMP
@
--END NC���ϲɹ�������

--BEGIN NC���ϲɹ���ϸ��
-- import from './data/TRA_FL_ORDER_DETAIL_TEMP.csv' of del 
-- 	   insert into TRA_FL_ORDER_DETAIL_TEMP 
-- @
-- update TRA_FL_ORDER_DETAIL_TEMP set memo = null
-- 	   where memo = '(null)'
-- @
-- update TRA_FL_ORDER_DETAIL_TEMP set standard = null
-- 	   where standard = '(null)'
-- @
-- update TRA_FL_ORDER_DETAIL_TEMP set isclosed = 'N'
-- 	   where isclosed = '('
-- @
-- update TRA_FL_ORDER_DETAIL_TEMP set isprocessed = 'N'
-- 	   where isprocessed is null
-- @
-- update TRA_FL_ORDER_DETAIL_TEMP set issync = 'N'
-- 	   where issync is null
-- @
-- commit;@
select * from TRA_FL_ORDER_DETAIL_TEMP
@
--END NC���ϲɹ���ϸ��