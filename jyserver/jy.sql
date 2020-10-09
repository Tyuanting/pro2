set names utf8;
drop database if exists jy;
create database jy charset=utf8;
use jy;

/**用户信息**/
create table jy_user(
uid int primary key auto_increment,
uname varchar(32),
upwd varchar(32),
email varchar(64),
phone varchar(16),

avatar varchar(128), #头像图片路径
user_name varchar(32),#真实姓名
gender int         /*性别 0-女 1-男*/
);
/**原始用户**/
/* insert into jy_user VALUE(null,'xiaotang','12345',null,null,null,null,null); */

/** 首页轮播图广告商品**/
create table jy_index_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    img varchar(128),
    title varchar(64),
    href varchar(128)
);
insert into jy_index_carousel VALUE(null,'banner1.jpg','1',null);
insert into jy_index_carousel VALUE(null,'banner2.jpg','1',null);
insert into jy_index_carousel VALUE(null,'banner3.jpg','1',null);


/** 商品分类**/
create table product_category(
    id int primary key auto_increment,
    cname varchar(32)
);
insert into product_category VALUE(null,'电视');
insert into product_category VALUE(null,'XESS智屏');
insert into product_category VALUE(null,'空调');
insert into product_category VALUE(null,'冰箱');
insert into product_category VALUE(null,'洗衣机');
insert into product_category VALUE(null,'健康电器');
insert into product_category VALUE(null,'智能家居');
insert into product_category VALUE(null,'商用显示');

/**类目菜单**/
create table banner_nav(
    id int(11),
    bname varchar(32)
);
insert into banner_nav VALUE(3,'空调爆款');
insert into banner_nav VALUE(1,'热销电视');
insert into banner_nav VALUE(4,'人气冰箱');
insert into banner_nav VALUE(5,'品质洗衣机');
insert into banner_nav VALUE(7,'厨卫电器');
insert into banner_nav VALUE(2,'XESS智屏');
insert into banner_nav VALUE(7,'智能门锁');

/** 首页商品**/
CREATE TABLE jy_index_product(
    pid INT PRIMARY key auto_increment,
    title VARCHAR(64),
    details VARCHAR(128),
    pic varchar(128),
    price DECIMAL(10,2),
    href VARCHAR(128),
    category_id int(11) not null
);
/**电视**/
insert into jy_index_product VALUE(null,'TCL 75V2 75英寸AI超智慧巨幕4K电视','TCL 75V2 75英寸大屏/95.9%屏占比/AI人工智能语音','tv1.png','3999',null,'1');
insert into jy_index_product VALUE(null,'65Q6 65英寸超薄全场景AI电视','人工智能免遥控液晶电视','tv2.png','2599',null,'1');
insert into jy_index_product VALUE(null,'55T6 55吋全场景AI人工智能电视','免遥控24h随时唤醒/场景自动识别','tv3.png','4199',null,'1');
insert into jy_index_product VALUE(null,'55Q680 55英寸金属超纤薄运动防抖全场景AI电视','娱乐社交电视，新一代Art5全面屏','tv4.png','3799',null,'1');
/**空调**/
insert into jy_index_product VALUE(null,'1匹 钛金静音 定频 冷暖 壁挂式空调','高品质压缩机，高效节能/30秒清凉/60秒速热','air1.png','1399',null,'3');
insert into jy_index_product VALUE(null,'柔风系列 1.5匹 一级变频 智能 凉感 空调','柔风 智能 ','air2.png','1949',null,'3');
insert into jy_index_product VALUE(null,'柔风系列 初荷1.5匹 一级能效 变频冷 智 静音 空调','柔风 初荷 智能','air3.png','2299',null,'3');
insert into jy_index_product VALUE(null,'柔风系列 2匹新一级能效圆柱式冷暖变频柔风空调','柔风 圆柱','air4.png','3999',null,'3');
insert into jy_index_product VALUE(null,'极简系列 3匹 三级 变频 冷暖 圆柱 空调','三级能效/910mm大出风口','air5.png','4199',null,'3');
/**冰箱**/
insert into jy_index_product VALUE(null,'TCL 650升对开门变频冰箱','风冷无霜 超大空间 （醇享金）','ref1.png','2699',null,'4');
insert into jy_index_product VALUE(null,'BCD-408WZ50 十字对开门风冷冰箱','AAT负离子养鲜，制冷均匀不风干，风冷无霜','ref2.png','2299',null,'4');
insert into jy_index_product VALUE(null,'BCD-210TWZ50典雅银 210升三门冰箱','变频风冷养鲜','ref3.png','1899',null,'4');
insert into jy_index_product VALUE(null,'TCL118L小双门节能家用冰箱','单身贵族 租房必备','ref4.png','1299',null,'4');
/**洗衣机**/
insert into jy_index_product VALUE(null,'TCL 8公斤变频滚筒洗衣机','16程序羽绒服/内衣洗','wash1.jpg','1299',null,'5');
insert into jy_index_product VALUE(null,'TCL9公斤变频滚筒洗衣机','变频静音滚筒洗衣机','wash2.png','1499',null,'5');
insert into jy_index_product VALUE(null,'XQG100-P300BD 10公斤洗烘变频洗衣机','快速洗烘一体，除味空气洗','wash3.png','1749',null,'5');
insert into jy_index_product VALUE(null,'TCL 9公斤全自动波轮洗衣机','XQB90-1578NS宝石黑 ','wash4.png','899',null,'5');
insert into jy_index_product VALUE(null,'TCL  7公斤全自动波轮洗衣机','XQB70-36SP宝石黑','wash5.png','649',null,'5');
/**其他**/
insert into jy_index_product VALUE(null,'暂时没有详情，待添加','','','','','2');
insert into jy_index_product VALUE(null,'暂时没有详情，待添加','','','','','6');
insert into jy_index_product VALUE(null,'暂时没有详情，待添加','','','','','7');
insert into jy_index_product VALUE(null,'暂时没有详情，待添加','','','','','8');