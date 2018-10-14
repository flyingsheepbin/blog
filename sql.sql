create database blog DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use blog;
create table article(
	id int  primary key auto_increment,
	title varchar(50) ,
	descriable varchar(200) ,
	page varchar(10000) ,
	article_post_time date ))ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert article value(1,'title','descriable','page content','2017-1-1');
