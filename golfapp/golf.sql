SET NAMES UTF8;
DROP DATABASE IF EXISTS golf;
CREATE DATABASE golf CHARSET=UTF8;
USE golf;


/***高尔夫首页商品表***/
CREATE TABLE golf_index(
  indexid INT PRIMARY KEY AUTO_INCREMENT,
  pic  VARCHAR(128),
  titles  VARCHAR(128),
  descri  VARCHAR(128)
);

/***插入高尔夫首页商品数据**/
INSERT INTO golf_index VALUES
(1,'../img/q11.jpg','GOLFBALL','晨曦徐徐拉开了帷幕,又是一个绚丽多彩的早晨,带着清新降临人间。静静的高尔夫球场, 实在是太美了,在这里为您收集了各类球，一定有你喜欢的，赶紧进来看一下吧！'),
(2,'../img/index66.jpg','GOLFBOX','高尔夫球包栏目为您提供高尔夫球袋,taylormade高尔夫球包,callaway高尔夫球包,tilist高尔夫球包,特价高尔夫球包及高尔夫球包定制服务,应有尽有,乐享其中!'),
(3,'../img/golfyi.jpg','GOLFCLOTHING','高尔夫球着装除了不影响球技发挥外,在选择的时候我们还应该注意服装的面料。各种不同的面料针对的群体不同,要根据自己的皮肤状态选择最合适自己的球衣,进来看看吧!'),
(4,'../img/qm11.jpg','GOLFCAP','高尔夫帽子,材质舒适,保护运动中的你,开启健康生活新方式!优质的运动产品,设计新颖,结实耐用.迪卡侬,让运动生活更轻松!选择最合适自己的球衣,进来看看吧!'),
(5,'../img/qg1.jpg','BRASSIE','采用世界先进的研发技术及科学、选用最优质的生产材料，配合专业精细的手工生产工艺及精心从而帮助高尔夫球爱好者实现将球打的更远更准确的愿望，同时倍感舒适愉悦!'),
(6,'../img/tui.jpg','GOLFPUTTE','作为高尔夫装备和创新性能技术的行业翘楚,卡拉威高尔夫公司于2019年1月隆重推出STOKELAB推杆,并于中国上市。精妙的推击全新STROKELAB的设计理念在于挑战传统!'),
(7,'../img/qxie.jpg','GOLFSHOES','高尔夫鞋底的形状、材质、结构都有别于普通鞋,尤其鞋底钉确保球手站得稳,有脚踏实地的感觉,有助于在不平坦的路面行走和防滑！它的工学设计有助于你发挥最佳水平！'),
(8,'../img/tao4.jpg','GOLFGLOVES','耐克高尔夫手套,贴心保护你的双手,更保护你的心情,保持握杆良好手感,为你带来美妙高尔夫体验!优质的运动产品,设计新颖,结实耐用.耐克,让运动生活更轻松!');

/****高尔夫球商品列表页***/
CREATE TABLE golf_ball(
  ballid INT,
  pic VARCHAR(128),
  price DECIMAL(5,2),
  details VARCHAR(128)
  
);

/****插入高尔夫球商品列表页数据***/
INSERT INTO golf_ball VALUES
(1,'../img/1010.jpg','1.00','0'),
(1,'../img/qc16.jpg','1.00','0'),
(1,'../img/honma1.jpg','353.00','HONMA高尔夫球系列,三层球,真正做到耐用,击球距离超远!'),
(1,'../img/titleist1.jpg','288.00','Titleist高尔夫球Prov1x正品团购三四层新款,先到先得!'),
(1,'../img/tay99.jpg','196.00','[正品]PGM高尔夫球3层球-比赛球-专业球 下场专用三层球！'),
(1,'../img/callaway1.jpg','228.00','正品callaway卡拉威Chrome Soft 18新款石墨烯四层球'),
(1,'../img/tay6655.jpg','220.00','Taylormade高尔夫球12粒装绿梦下场远距离双层球好弹性'),
(1,'../img/dunlop1.jpg','198.00','DUNLOP登路普 DDH SOFT高尔夫三层球 专业比赛球 远距离球'),
(1,'../img/xxi01.jpg','208.00','XXIOxxio高尔夫球 三层球 SUPER SOFT X golf比赛球 '),
(1,'../img/topnotch1.jpg','201.00','高尔夫球正品新款双层高尔夫盒装球远距离比赛彩色球包邮'),
(1,'../img/caiton1.jpg','138.00','高尔夫球Caiton凯盾下场练习比赛球三层远距离球买二赠一'),
(1,'../img/blstone1.jpg','278.00','普利司通/Bridgestone高尔夫三层球E6 老虎伍兹推荐球 可团购'),
(1,'../img/srixon1.jpg','248.00','正品SRIXON 高尔夫球 全新高尔夫三层球 朋友高尔夫比赛球'),
(1,'../img/decathlon1.jpg','278.00','迪卡侬高尔夫球双层/三层球比赛练习场下场正品球INESIS'),
(2,'../img/qb1.jpg','968.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb2.jpg','968.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb3.jpg','958.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb4.jpg','868.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb5.jpg','938.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb6.jpg','768.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb7.jpg','868.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb8.jpg','968.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb9.jpg','968.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb10.jpg','968.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb5.jpg','968.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(2,'../img/qb5.jpg','968.00','超轻！PGM新品 高尔夫球包 男女支架枪包 14插口 可装全套球杆'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(3,'../img/nqy1.jpg','308.00','2件包邮 新款！ 高尔夫球服装 女士短袖球服 韩版春夏季运动衣服'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(4,'../img/qm14.jpg','98.00','男帽女帽鸭舌帽高尔夫户外运动网球棒球太阳帽'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(5,'../img/qg4.jpg','8868.00','TaylorMade泰勒梅高尔夫球杆男士火箭炮RBZ碳素套杆初中级新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(6,'../img/tg11.jpg','566.00','ODYSSEY高尔夫球杆男士推杆STROKE LAB系列2019新款'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(7,'../img/item_pic.jpg','486.00','Callaway卡拉威高尔夫球鞋HYPERCHEV系列男士有钉鞋柔软旋钮鞋'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男'),
(8,'../img/tao1.jpg','116.00','高尔夫球用品运动时尚GOLF球透气防水羊皮高尔夫球手套男');


/**创建首页球场地址表**/
CREATE  TABLE golf_address(adid INT ,addresses VARCHAR(20));
/**插入首页球场地址表数据**/
INSERT INTO golf_address VALUES
(1,'海口'),
(2,'三亚'),
(3,'昆明'),
(4,'上海'),
(5,'深圳'),
(6,'广州'),
(7,'东莞');

/**创建首页球场表**/
CREATE TABLE golf_ball_chang(chid INT,chimg VARCHAR(50),title VARCHAR(200),price DECIMAL(7,2),fid INT);
/**插入首页球场数据**/
INSERT INTO golf_ball_chang VALUES
(1,'../img/golf2/0bcc5f0f2cb78c3d.jpg','海南海口观澜湖高尔夫9号场','500',1),
(1,'../img/golf2/1a1bdf8a3935bd2a.jpg','海南海口观澜湖高尔夫10号场','600',2),
(1,'../img/golf2/6dda7adb6ffa372c.jpg','海南海口观澜湖高尔夫2号场','780',3),
(1,'../img/golf2/8b97957117927bc2.png','海南海口观澜湖高尔夫1号场','1680',4),
(2,'../img/golf2/8fa901cb22988f7f.jpg','海南三亚神泉国际高尔夫神泉场','560',5),
(2,'../img/golf2/09b1262ac1dded0b.jpg','海南三亚亚龙湾高尔夫球场','680',6),
(2,'../img/golf2/9b7b8bbb49bab553.jpg','海南三亚红峡谷高尔夫球场','700',7),
(2,'../img/golf2/36d669ee350e2c4c.jpg','海南三亚鹿回头高尔夫球场','1790',8),
(3,'../img/golf2/60da38aa73afb4de.jpg','云南昆明阳光高尔夫球场','780',9),
(3,'../img/golf2/165_1499831203407.jpg','云南昆明万达高尔夫球场','750',10),
(3,'../img/golf2/67e791ed6de2c00f.jpg','云南昆明春城湖畔高尔夫山景','1256',11),
(3,'../img/golf2/6dda7adb6ffa372c.jpg','云南昆明春城湖畔高尔夫湖景','1340',12),
(4,'../img/golf2/67e791ed6de2c00f.jpg','上海协和高尔夫球场','490',13),
(4,'../img/golf2/67e791ed6de2c00f.jpg','上海华凯乡村高尔夫球场','680',14),
(4,'../img/golf2/67e791ed6de2c00f.jpg','上海天马乡村高尔夫球场','940',15),
(4,'../img/golf2/67e791ed6de2c00f.jpg','上海美兰湖(名人赛)球场','1800',16),
(5,'../img/golf2/3574a1f288d46ed0.png','广东深圳观澜湖-艾斯','967',17),
(5,'../img/golf2/3574a1f288d46ed0.png','广东深圳观澜湖-世界杯','1145',18),
(5,'../img/golf2/3574a1f288d46ed0.png','广东深圳观澜湖-维杰','1254',19),
(5,'../img/golf2/3574a1f288d46ed0.png','广东深圳观澜湖-维杰','1360',20),
(6,'../img/golf2/hff80808137caf8230137ef0dff60044e.png','广东广州仙村国际高尔夫球场','580',21),
(6,'../img/golf2/hff80808137caf8230137ef0dff60044e.png','广东广州风神高尔夫球场-哈沃斯场','600',22),
(6,'../img/golf2/hff80808137caf8230137ef0dff60044e.png','广东广州麓湖高尔夫球场','680',23),
(6,'../img/golf2/hff80808137caf8230137ef0dff60044e.png','广东广州九龙湖高尔夫亚运场','730',24),
(7,'../img/golf2/d7053d9452259216.jpg','广东东莞银利外商高尔夫球场','750',25),
(7,'../img/golf2/d7053d9452259216.jpg','广东东莞凤凰山高尔夫球场','860',26),
(7,'../img/golf2/d7053d9452259216.jpg','广东东莞长安乡村高尔夫球场','930',27),
(7,'../img/golf2/d7053d9452259216.jpg','广东东莞峰景高尔夫球场','920',28);

/**创建球场祥情页表**/
CREATE TABLE ball_details(deid INT,datitle VARCHAR(100), src1 VARCHAR(50),src2 VARCHAR(50),src3 VARCHAR(50),src4 VARCHAR(50),moshi VARCHAR(30),shuju VARCHAR(30),sjs VARCHAR(30),mashu VARCHAR(30),dianhua VARCHAR(30),balladdress VARCHAR(30) );
/**插入球场祥情页表数据**/
INSERT INTO ball_details VALUES
(1,'海南海口观澜湖高尔夫9号场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','植物园型景观','18洞70杆','布莱恩•科里 - 史密特-科里设计','6535码','089868683888','海南省海口市观澜湖大道1号'),
(2,'海南海口观澜湖高尔夫10号场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','棕榈树和沙丘搭配的景观','18洞70杆','布莱恩•科里 - 史密特-科里设计','6428码','089868683888','海南省海口市观澜湖大道1号'),
(3,'海南海口观澜湖高尔夫2号场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','沙带式球场','18洞72杆','布莱恩•科里 - 史密特-科里设计','7297码','089868683888','海南省海口市观澜湖大道1号'),
(4,'海南海口观澜湖高尔夫1号场(黑石场)','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','锦标赛球场','18洞73杆','布莱恩•科里 - 史密特-科里设计','7808码','089868683888','海南省海口市观澜湖大道1号'),
(5,'海南三亚神泉国际高尔夫神泉场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','林克斯球场','18洞72杆','Nelson&Haworth','7575码','089831888088','海南省三亚市海棠湾南田温泉旅游城'),
(6,'海南三亚亚龙湾高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','林克斯球场','18洞72杆','罗伯特·琼斯二世','7189码','089888565039/5288','海南省三亚市亚龙湾国家旅游度假区内'),
(7,'海南三亚红峡谷高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山地球场','27洞109杆','JMP公司','10858码','089888566698','海南省三亚市龙湾国家旅游度假区博后村'),
(8,'海南三亚鹿回头高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','林克斯球场','18洞72杆','Neil Haworth','7248码','089888692229','海南省三亚市鹿回头开发区三亚鹿回头高尔夫球会'),
(9,'云南昆明阳光高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山地球场','18洞72杆','罗伯特-琼斯','7232码','087168288999','云南省昆明市昆曲高速公路6公里处'),
(10,'云南昆明万达高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','锦标赛球场','18洞72杆','澳大利亚LCW高尔夫设计公司','6638码','087164322999转888','云南省昆明滇池国家旅游渡假区红塔东路12号'),
(11,'云南昆明春城湖畔高尔夫山景','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山景球场','18洞72杆','Jack Nicklaus','7453码','087167671188','云南省昆明市宜良县汤池镇'),
(12,'云南昆明春城湖畔高尔夫湖景','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','湖景球场','18洞72杆','Robert Trent Jones Jr','7204码','087167671188','云南省昆明市宜良县汤池镇'),
(13,'上海协和高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','平原球场','18洞72杆','MR KENTAROSATO','7131码','02159950111','上海市嘉定区唐行镇嘉行公路3765号'),
(14,'上海华凯乡村高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','林克斯球场','18洞72杆','Mr.Les Watts','7117码','02167120966','上海市上海化学工业区环华路9号'),
(15,'上海天马乡村高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山地球场','27洞108杆','Mr. Phil Ryan','10538码','02157661666','上海市松江区赵昆公路3958号'),
(16,'上海美兰湖(名人赛)球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','森林球场','18洞72杆','师Peter Thompson','7259码','02156590008','上海市宝山区沪太路6655号(内美兰湖路9号)'),
(17,'广东深圳观澜湖-艾斯','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','草原球场','18洞72杆','恩尼艾斯','7049码','075528020888','广东省深圳市龙华新区观澜镇高尔夫大道1号'),
(18,'广东深圳观澜湖-维杰','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','澳洲风格','18洞72杆','维杰圣尔','6883码','075528020888','广东省深圳市龙华新区观澜镇高尔夫大道1号'),
(19,'广东深圳观澜湖-尾崎将司','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','植物园型景观','18洞72杆','尾崎将司','7024码','075528020888','广东省深圳市龙华新区观澜镇高尔夫大道1号'),
(20,'广东深圳观澜湖-世界杯','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','锦标赛球场','18洞72杆','杰克 尼克劳斯','7294码','075528020888','广东省深圳市龙华新区观澜镇高尔夫大道1号'),
(21,'广东广州仙村国际高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山地球场','18洞72杆','Nelson&Haworh','6535码','02082933888','广东省广州增城市新塘镇仙村林场'),
(22,'广东广州风神高尔夫球场-哈沃斯场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山地球场','18洞72杆','前18：Nelson&Haworh','14400码','02082933888','广东省广州市花都区岭东路39号汽车城体育俱乐部内'),
(23,'广东广州麓湖高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','林克斯球场','18洞72杆','Dave Thomas','6831码','02083507733','广东省广州市麓景路麓湖'),
(24,'广东广州九龙湖高尔夫亚运场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','植物园型景观','18洞70杆','布莱恩•科里 - 史密特-科里设计','6535码','02036909888','广东省广州市花都区东镇山前大道3号九龙湖社区'),
(25,'广东东莞银利外商高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山地球场','18洞72杆','梁国坤','7073码','076987730000','广东省东莞市清溪镇'),
(26,'广东东莞凤凰山高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','山地球场','27洞107杆','不详','6806码','076987280000','广东省东莞市凤岗雁田区祥新西路'),
(27,'广东东莞长安乡村高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','林克斯球场','36洞144杆','J.Michael Poellot','6935码','076985313888','广东省东莞市长安镇莲花山麓'),
(28,'广东东莞峰景高尔夫球场','../img/chang_adress/0bcc5f0f2cb78c3d_l.jpg','../img/chang_adress/1_1425354826122_l.jpg','../img/chang_adress/1_1500368951367_l.jpg','../img/chang_adress/1_1500368955169_l.jpg','林克斯球场','36洞144杆','Jim Engh','6682码','076922209998','广东省东莞市东城区迎宾大道');


/**高尔夫球祥情页放大镜图片**/
CREATE TABLE golf_ball_details(
  jid INT PRIMARY KEY AUTO_INCREMENT,
  fnid INT,
  smimg VARCHAR(300),
  mdimg VARCHAR(300),
  lgimg VARCHAR(300)
);
 /**插入高尔夫球祥情页放大镜图片**/ 
INSERT INTO golf_ball_details VALUES
(null,'1','../img/GolfBallDetails/O1CN01wecQ3K1PV3Gq4ywA4_!!1951471845.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01wecQ3K1PV3Gq4ywA4_!!1951471845.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN01wecQ3K1PV3Gq4ywA4_!!1951471845.jpg'),
(null,'1','../img/GolfBallDetails/TB2jLptbolnpuFjSZFjXXXTaVXa_!!1951471845.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2jLptbolnpuFjSZFjXXXTaVXa_!!1951471845.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2jLptbolnpuFjSZFjXXXTaVXa_!!1951471845.jpg'),
(null,'1','../img/GolfBallDetails/TB2PcGvb1rAQeBjSZPcXXbJ6pXa_!!1951471845.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2PcGvb1rAQeBjSZPcXXbJ6pXa_!!1951471845.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2PcGvb1rAQeBjSZPcXXbJ6pXa_!!1951471845.jpg'),
(null,'1','../img/GolfBallDetails/TB2Z_1EbV6AQeBjSZFIXXctXpXa_!!1951471845.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2Z_1EbV6AQeBjSZFIXXctXpXa_!!1951471845.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2Z_1EbV6AQeBjSZFIXXctXpXa_!!1951471845.jpg'),
(null,'1','../img/GolfBallDetails/TB2I.0sbiRnpuFjSZFCXXX2DXXa_!!1951471845.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2I.0sbiRnpuFjSZFCXXX2DXXa_!!1951471845.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2I.0sbiRnpuFjSZFCXXX2DXXa_!!1951471845.jpg'),

(null,'2','../img/GolfBallDetails/TB2tZ1QtgRkpuFjy1zeXXc.6FXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2tZ1QtgRkpuFjy1zeXXc.6FXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2tZ1QtgRkpuFjy1zeXXc.6FXa_!!651398879.jpg'),
(null,'2','../img/GolfBallDetails/TB2v6VerxlmpuFjSZPfXXc9iXXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2v6VerxlmpuFjSZPfXXc9iXXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2v6VerxlmpuFjSZPfXXc9iXXa_!!651398879.jpg'),
(null,'2','../img/GolfBallDetails/TB17zo3mxPI8KJjSspfXXcCFXXa_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/TB17zo3mxPI8KJjSspfXXcCFXXa_!!0-item_pic.jpg_430x430q90.jpg','../img/GolfBallDetails/TB17zo3mxPI8KJjSspfXXcCFXXa_!!0-item_pic.jpg'),
(null,'2','../img/GolfBallDetails/TB2LTQPjm0jpuFjy0FlXXc0bpXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2LTQPjm0jpuFjy0FlXXc0bpXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2LTQPjm0jpuFjy0FlXXc0bpXa_!!651398879.jpg'),
(null,'2','../img/GolfBallDetails/TB2tkgQj.hnpuFjSZFpXXcpuXXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2tkgQj.hnpuFjSZFpXXcpuXXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2tkgQj.hnpuFjSZFpXXcpuXXa_!!651398879.jpg'),

(null,'3','../img/GolfBallDetails/O1CN011UAxulLSbnEiqGG_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN011UAxulLSbnEiqGG_!!0-item_pic.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN011UAxulLSbnEiqGG_!!0-item_pic.jpg'),
(null,'3','../img/GolfBallDetails/O1CN011UAxuaScRB0JczX_!!2111032478.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN011UAxuaScRB0JczX_!!2111032478.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN011UAxuaScRB0JczX_!!2111032478.jpg'),
(null,'3','../img/GolfBallDetails/O1CN011UAxuXTX2XQlGMy_!!2111032478.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN011UAxuXTX2XQlGMy_!!2111032478.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN011UAxuXTX2XQlGMy_!!2111032478.jpg'),
(null,'3','../img/GolfBallDetails/O1CN011UAxuXuxl64jdsI_!!2111032478.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN011UAxuXuxl64jdsI_!!2111032478.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN011UAxuXuxl64jdsI_!!2111032478.jpg'),
(null,'3','../img/GolfBallDetails/O1CN011UAxuYzJAfogioL_!!2111032478.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN011UAxuYzJAfogioL_!!2111032478.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN011UAxuYzJAfogioL_!!2111032478.jpg'),

(null,'4','../img/GolfBallDetails/O1CN0122tUef1pA9CisLSBH_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN0122tUef1pA9CisLSBH_!!0-item_pic.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN0122tUef1pA9CisLSBH_!!0-item_pic.jpg'),
(null,'4','../img/GolfBallDetails/TB2bKZYbbBmpuFjSZFAXXaQ0pXa_!!1072065319.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2bKZYbbBmpuFjSZFAXXaQ0pXa_!!1072065319.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2bKZYbbBmpuFjSZFAXXaQ0pXa_!!1072065319.jpg'),
(null,'4','../img/GolfBallDetails/TB1QN00OVXXXXXlapXXXXXXXXXX_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/TB1QN00OVXXXXXlapXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg','../img/GolfBallDetails/TB1QN00OVXXXXXlapXXXXXXXXXX_!!0-item_pic.jpg'),
(null,'4','../img/GolfBallDetails/O1CN01pNT3N61pA9A8jWeLm_!!1072065319.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01pNT3N61pA9A8jWeLm_!!1072065319.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN01pNT3N61pA9A8jWeLm_!!1072065319.jpg'),
(null,'4','../img/GolfBallDetails/TB2X13YbbBmpuFjSZFAXXaQ0pXa_!!1072065319.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2X13YbbBmpuFjSZFAXXaQ0pXa_!!1072065319.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2X13YbbBmpuFjSZFAXXaQ0pXa_!!1072065319.jpg'),

(null,'5','../img/GolfBallDetails/O1CN015WZjuC1ez1QPNevGD_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN015WZjuC1ez1QPNevGD_!!0-item_pic.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN015WZjuC1ez1QPNevGD_!!0-item_pic.jpg'),
(null,'5','../img/GolfBallDetails/O1CN013FztCt1ez1QO5wTsk_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN013FztCt1ez1QO5wTsk_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN013FztCt1ez1QO5wTsk_!!3375683941.jpg'),
(null,'5','../img/GolfBallDetails/TB2cWlEf26TBKNjSZJiXXbKVFXa_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2cWlEf26TBKNjSZJiXXbKVFXa_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2cWlEf26TBKNjSZJiXXbKVFXa_!!3375683941.jpg'),
(null,'5','../img/GolfBallDetails/TB2GHicr7KWBuNjy1zjXXcOypXa_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2GHicr7KWBuNjy1zjXXcOypXa_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2GHicr7KWBuNjy1zjXXcOypXa_!!3375683941.jpg'),
(null,'5','../img/GolfBallDetails/TB2V9WWr7CWBuNjy0FaXXXUlXXa_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2V9WWr7CWBuNjy0FaXXXUlXXa_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2V9WWr7CWBuNjy0FaXXXUlXXa_!!3375683941.jpg'),

(null,'6','../img/GolfBallDetails/O1CN01UEGpUI1ez1QMtbMUi_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01UEGpUI1ez1QMtbMUi_!!0-item_pic.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN01UEGpUI1ez1QMtbMUi_!!0-item_pic.jpg'),
(null,'6','../img/GolfBallDetails/O1CN01zLEKl51ez1OIdpsTS_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01zLEKl51ez1OIdpsTS_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN01zLEKl51ez1OIdpsTS_!!3375683941.jpg'),
(null,'6','../img/GolfBallDetails/O1CN01gXpBsP1ez1OJ8tIhR_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01gXpBsP1ez1OJ8tIhR_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN01gXpBsP1ez1OJ8tIhR_!!3375683941.jpg'),
(null,'6','../img/GolfBallDetails/O1CN01sPOkkk1ez1OKy34Gr_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01sPOkkk1ez1OKy34Gr_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN01sPOkkk1ez1OKy34Gr_!!3375683941.jpg'),
(null,'6','../img/GolfBallDetails/O1CN01g5bIeE1ez1OJHH6jI_!!3375683941.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01g5bIeE1ez1OJHH6jI_!!3375683941.jpg_430x430q90.jpg','../img/GolfBallDetails/O1CN01g5bIeE1ez1OJHH6jI_!!3375683941.jpg'),

(null,'7','../img/GolfBallDetails/O1CN01pI9Jqx2FSdABnEDL0_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN01pI9Jqx2FSdABnEDL0_!!0-item_pic.jpg_430x430q90 (1).jpg','../img/GolfBallDetails/O1CN01pI9Jqx2FSdABnEDL0_!!0-item_pic.jpg'),
(null,'7','../img/GolfBallDetails/O1CN016Q7hRX2FSdAAbJsFC_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/O1CN016Q7hRX2FSdAAbJsFC_!!651398879.jpg_430x430q90 (1).jpg','../img/GolfBallDetails/O1CN016Q7hRX2FSdAAbJsFC_!!651398879.jpg'),
(null,'7','../img/GolfBallDetails/TB269AxC9BYBeNjy0FeXXbnmFXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB269AxC9BYBeNjy0FeXXbnmFXa_!!651398879.jpg_430x430q90 (1).jpg','../img/GolfBallDetails/TB269AxC9BYBeNjy0FeXXbnmFXa_!!651398879.jpg'),
(null,'7','../img/GolfBallDetails/TB2kvRSDamWBuNjy1XaXXXCbXXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2kvRSDamWBuNjy1XaXXXCbXXa_!!651398879.jpg_430x430q90 (1).jpg','../img/GolfBallDetails/TB2kvRSDamWBuNjy1XaXXXCbXXa_!!651398879.jpg'),
(null,'7','../img/GolfBallDetails/TB2w6sMCY9YBuNjy0FgXXcxcXXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2w6sMCY9YBuNjy0FgXXcxcXXa_!!651398879.jpg_430x430q90 (1).jpg','../img/GolfBallDetails/TB2w6sMCY9YBuNjy0FgXXcxcXXa_!!651398879.jpg'),

(null,'8','../img/GolfBallDetails/TB2NblZkvDH8KJjy1XcXXcpdXXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2NblZkvDH8KJjy1XcXXcpdXXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2NblZkvDH8KJjy1XcXXcpdXXa_!!651398879.jpg'),
(null,'8','../img/GolfBallDetails/TB1bolbeqmgSKJjSsplXXaICpXa_!!0-item_pic.jpg_60x60q90.jpg','../img/GolfBallDetails/TB1bolbeqmgSKJjSsplXXaICpXa_!!0-item_pic.jpg_430x430q90.jpg','../img/GolfBallDetails/TB1bolbeqmgSKJjSsplXXaICpXa_!!0-item_pic.jpg'),
(null,'8','../img/GolfBallDetails/TB2aKZba63nyKJjSZFHXXaTCpXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2aKZba63nyKJjSZFHXXaTCpXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2aKZba63nyKJjSZFHXXaTCpXa_!!651398879.jpg'),
(null,'8','../img/GolfBallDetails/TB2XugfqYwrBKNjSZPcXXXpapXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2XugfqYwrBKNjSZPcXXXpapXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2XugfqYwrBKNjSZPcXXXpapXa_!!651398879.jpg'),
(null,'8','../img/GolfBallDetails/TB2M950aE3iyKJjy1zeXXbxZFXa_!!651398879.jpg_60x60q90.jpg','../img/GolfBallDetails/TB2M950aE3iyKJjy1zeXXbxZFXa_!!651398879.jpg_430x430q90.jpg','../img/GolfBallDetails/TB2M950aE3iyKJjy1zeXXbxZFXa_!!651398879.jpg');






/*****球手排名表*****/
CREATE TABLE golf_paiming(
  paid INT ,
  pic  VARCHAR(100),
  title VARCHAR(50) PRIMARY KEY 
);
/*****球手排名表外键关联表*****/
CREATE TABLE paiming_list(
  mingid INT PRIMARY KEY AUTO_INCREMENT,
  pos SMALLINT,
  player VARCHAR(10),
  pts  DECIMAL(6,4),
  tits VARCHAR(50),
  FOREIGN KEY(tits) REFERENCES golf_paiming(title)
);
/*****球手排名表插入数据*****/
INSERT INTO golf_paiming VALUES
(4,'../img/UaUFumvoQv68oCpSVhHk7A.png','中高协职业男子排名'),
(3,'../img/1trdBcqeSXewakX8IkniNg.png','中高协职业女子排名'),
(2,'../img/UDNASMAvR_aQwc_tGA5CXg.png','中国男子世界排名'),
(1,'../img/UDNASMAvR_aQwc_tGA5CXg.png','中国女子世界排名');
/****外键表插入数据****/
INSERT INTO paiming_list VALUES
(null,'1','李昊桐','47.8807','中高协职业男子排名'),
(null,'2','袁也淳','40.5938','中高协职业男子排名'),
(null,'3','吴阿顺','26.9693','中高协职业男子排名'),
(null,'4','张新军','23.9396','中高协职业男子排名'),
(null,'5','梁文冲','22.6266','中高协职业男子排名'),
(null,'6','金诚','20.1167','中高协职业男子排名'),

(null,'1','冯珊珊','40.9528','中高协职业女子排名'),
(null,'2','刘文博','23.9183','中高协职业女子排名'),
(null,'3','刘钰','23.4269','中高协职业女子排名'),
(null,'4','刘依一','12.9033','中高协职业女子排名'),
(null,'5','鲁婉遥','10.5669','中高协职业女子排名'),
(null,'6','林希妤','9.6768','中高协职业女子排名'),

(null,'39','李昊桐','2.9364','中国男子世界排名'),
(null,'225','吴阿顺','0.7514','中国男子世界排名'),
(null,'279','张新军','0.605','中国男子世界排名'),
(null,'317','袁也淳','0.5216','中国男子世界排名'),
(null,'488','窦泽成','0.325','中国男子世界排名'),
(null,'632','梁文冲','0.2315','中国男子世界排名'),

(null,'21','冯珊珊','3.3644','中国女子世界排名'),
(null,'47','刘钰','1.9631','中国女子世界排名'),
(null,'125','鲁婉遥','0.8299','中国女子世界排名'),
(null,'146','阎菁','0.7258','中国女子世界排名'),
(null,'177','林希妤','0.5386','中国女子世界排名'),
(null,'206','刘文博','0.4624','中国女子世界排名');








/**高尔夫球首页轮播图表**/
CREATE TABLE golf_ball_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
   lg VARCHAR(128)             #大图片路径
);
/******轮播图数据导入******/
INSERT INTO golf_ball_pic VALUES
(null,'../img/timg (2).jpg'),
(null,'../img/102.jpeg'),
(null,'../img/timg (10).jpg'),
(null,'../img/88.jpg'),
(null,'../img/timg (7).jpg'),
(null,'../img/timg (30).jpg'),
(null,'../img/77.jpeg'),
(null,'../img/timg (27).jpg');




/**用户信息**/
CREATE TABLE golf_user(
  id INT ,
  usid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  gender INT                  #性别  0-女  1-男
);

/**用户信息**/
INSERT INTO golf_user VALUES
(1,'1','dingding','123456qq','wu@qq.com','13658779546','0'),
(2,'2','dangdang','123456++--ww','qq@qq.com','1365533546','1'),
(3,'3','luping','123456+-qq','wo@qq.com','13569874561','0'),
(4,'4','太阳花','6gg231','86555@qq.com','138859546','1'),
(5,'5','好人榜','6587fgb8231','5654755@qq.com','13658535446','1'),
(6,'6','光辉大方','65wef231','982755@qq.com','1364588646','0'),
(7,'7','欧阳服不服','65kd4731','5525755@qq.com','13658779546','0'),
(8,'8','好公司','dth8231','5576515@qq.com','1358876546','1'),
(9,'9','退还','658rht1','463255@qq.com','13658965421','1'),
(10,'10','愉快','6sh8231','57425@qq.com','13658774562','1'),
(11,'11','埃尔切','9dh8231','7895755@qq.com','13645789046','0');


/**客户评价数据表**/
CREATE TABLE golf_khpj(
  id INT PRIMARY KEY AUTO_INCREMENT,
  kid INT,
  sheji VARCHAR(100),
  fuwu VARCHAR(100),
  zhiliang VARCHAR(100),
  wuliu VARCHAR(100),
  dianhua CHAR(11),
  riqi VARCHAR(50),
  pingjia VARCHAR(200),
  FOREIGN KEY(kid) REFERENCES golf_user(usid)
);
/**客户评价数据表插入数据**/
INSERT INTO golf_khpj VALUES
(NULL,'1','富美感','商家态度很好,贴心','用了很久还跟新的一样','速度快第二天就到了','15345821578','2019-7-22','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'3','富fdb美感','商家gd很好，贴心','用多人通话新的一样','速度快电饭锅就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'4','美感','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'5','有的好美感','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'4','富有空间美感','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'2','设计不错哦','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'3','挺会想的','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'4','厉害啊','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉很平和的度假球场,很好的球杆'),
(NULL,'5','感觉不错哦','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'6','速度','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','收到货','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','教育','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','多提意见','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','特高压交通','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','热条件好推荐','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','东方故事','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','同一家','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','去投入','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','旧科目与','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','人挺好日记','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','如咖啡豆贝多芬','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','义务人不会','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','退款','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','我二哥','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','统一缴纳','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','同一家','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','二狗玉米款','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','我给别人通话','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','然后推土机','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','客气二分','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','别人的不让他','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','入工会吧','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','有客人发给他人','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','私人','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','同一家','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','就来半年度','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','虽然很痛苦','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','阮经天','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','就那样','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','仍复合弓','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆'),
(NULL,'1','月收入比','商家态度很好，贴心','用了很久还跟新的一样','速度快第二天就到了','15369745821','2019-5-2','一开始感觉平淡无奇，后面越打感觉还不错很平和的度假球场,很好的球杆');




/**收货地址信息**/
CREATE TABLE golf_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名
  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE golf_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE golf_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间

);

/**用户订单祥情**/
CREATE TABLE golf_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);



















