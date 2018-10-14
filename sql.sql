create database blog DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use blog;
create table article(
	id int  primary key auto_increment,
	title varchar(50) ,
	descriable varchar(200) ,
	page varchar(10000) ,
	article_post_time date )ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table article_user(
	id int primary key auto_increment,
	username varchar(20),
	password varchar(30)
)engine=InnoDB default charset=utf8;
#添加文章‘浏览数目’字段
alter table article add article_view_count int default 0;
#添加文章‘评论数目’字段
alter table article add article_comment_count int default 0;
#添加‘用户邮箱’
alter table article_user add email varchar(30);
#给username添加‘唯一约束’
alter table article_user add unique(username);