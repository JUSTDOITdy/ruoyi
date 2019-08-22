-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产品类型', '3', '1', '/copyright/appProductType', 'C', '0', 'copyright:appProductType:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '产品类型菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产品类型查询', @parentId, '1',  '#',  'F', '0', 'copyright:appProductType:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产品类型新增', @parentId, '2',  '#',  'F', '0', 'copyright:appProductType:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产品类型修改', @parentId, '3',  '#',  'F', '0', 'copyright:appProductType:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('产品类型删除', @parentId, '4',  '#',  'F', '0', 'copyright:appProductType:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
