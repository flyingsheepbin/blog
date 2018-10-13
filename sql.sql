create database blog DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use blog;
create table article(
	int id primary key auto_increment,
	varchar(50) title,
	varchar(200) descriable,
	varchar(10000) page,
	date article_post_time))ENGINE=InnoDB DEFAULT CHARSET=utf8;
