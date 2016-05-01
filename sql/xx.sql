create table comm_entity(
	id bigint(20) NOT NULL AUTO_INCREMENT,
	col1 varchar(20),
	col2 varchar(20),
	col3 varchar(20),
	PRIMARY KEY (`id`)
);

create table sys_tb_user(
	id bigint(20) NOT NULL AUTO_INCREMENT,
	user_name varchar(20) NOT NULL comment '用户名',
	`password` varchar(20) NOT NULL comment '密码',
	create_time date comment '创建时间',
	PRIMARY KEY (`id`)
);