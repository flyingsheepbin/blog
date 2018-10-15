create database blog DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use blog;
create table article(
	id int  primary key auto_increment,
	title varchar(50) ,
	id int primary key auto_increment,
	title varchar(50),
	descriable varchar(200) ,
	page varchar(10000) ,
	article_post_time date )ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table article_user(
	id int primary key auto_increment,
	username varchar(20),
	password varchar(30)
)engine=InnoDB default charset=utf8;
#添加被查看数量
alter table article add article_view_count int default 0;
#添加评论数
alter table article add article_comment_count int default 0;
#添加用户邮箱
alter table article_user add email varchar(30);
#给username添加唯一约束
alter table article_user add unique(username);