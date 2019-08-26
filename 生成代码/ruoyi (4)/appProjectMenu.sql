-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('项目', '3', '1', '/copyright/appProject', 'C', '0', 'copyright:appProject:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '项目菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('项目查询', @parentId, '1',  '#',  'F', '0', 'copyright:appProject:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('项目新增', @parentId, '2',  '#',  'F', '0', 'copyright:appProject:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('项目修改', @parentId, '3',  '#',  'F', '0', 'copyright:appProject:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('项目删除', @parentId, '4',  '#',  'F', '0', 'copyright:appProject:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
