/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : bookdb

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2022-06-29 21:04:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `pic` varchar(100) NOT NULL,
  `publish` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `stock` int(255) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '1', '罗小黑战记', '39.90', '雨夜，一只流落街头的小黑猫被少女罗小白带回家，起名罗小黑。\r\n\r\n　　罗小黑不是一只普通的猫咪，它极通人性，会蹲马桶，不吃猫粮，长长的尾巴甚至能分裂成多个名为“黑咻”的生物体。与此同时，名为“谛听”的神秘人物，发动手下三匹长着翅膀的狼，搜寻着罗小黑的下落。\r\n\r\n　　不久，罗小白带着小黑到乡下探望堂哥阿根和爷爷，由此发生了种种离奇玄幻事件……', 'Images/cover/101-1.png', '厦门工学院', 'MTJJ', '97', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('2', '5', '制冷少女', '36.80', '《制冷少女》以吃货、大学、闺蜜、生活四个方面入手，以轻松的语言和段子式的小故事，讲述制冷少女的日常生活。\r\n漫画主角的造型是一个皮肤有点黑的女汉子，形象鲜明简单，风格突出，标示性强，马尾，T恤，短裤人字拖，充满浓浓的生活气息。\r\n这是一个可爱女孩的故事，也是你的、我的、她的，或许也是每一个女孩曾经经历的、即将经历的或即将经历的生活和故事。故事里的女汉子，生活里的真女神。', 'Images/cover/101-2.png', '厦门工学院', '制冷少女', '94', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('3', '2', '百年孤独', '39.60', '多年以后，奥雷连诺上校站在行刑队面前，准会想起父亲带他去参观\r\n冰块的那个遥远的下午。当时，马孔多是个二十户人家的村庄，一座座土\r\n房都盖在河岸上，河水清澈，沿着遍布石头的河床流去，河里的石头光滑\r\n、洁白，活象史前的巨蛋。这块天地还是新开辟的，许多东西都叫不出名\r\n字，不得不用手指指点点。每年三月，衣衫褴楼的吉卜赛人都要在村边搭\r\n起帐篷，在笛鼓的喧嚣声中，向马孔多的居民介绍科学家的***新发明。他\r\n们首先带来的是磁铁。一个身躯高大的吉卜赛人，自称梅尔加德斯，满脸\r\n络腮胡子，手指瘦得象鸟的爪子，向观众出色地表演了他所谓的马其顿炼\r\n金术士创造的世界第八奇迹。', 'Images/cover/101-3.png', '厦门工学院', '加西亚·马尔克斯 ', '103', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('4', '2', '平凡的世界', '138.00', '他一个人在山里劳动歇息的时候，头枕手掌仰面躺在黄土地上，长久地望着高远的蓝天和悠悠飘飞的白云，眼里便会莫名地盈满了泪水。\r\n\r\n山野寂静无声，甚至能听见自己鬓角的血管在哏哏地跳动。这样的时候，他记忆的风帆会反复驶进往日的岁月。石圪节中学、原西县高中……尽管那时饥肠辘辘，有无数的愁苦，但现在想起来，那倒是他一生中度过的美妙的时光。他也不时地想起高中时班上的同学们：金波、顾养民、郝红梅、田晓霞、侯玉英……眼下，这些人都各走了各的路。金波正在黄原跟他父亲学开汽车。红梅和他一样，回村后当了小学教师，听说现在仍然当着。侯玉英的情况他现在不很清楚—他和跛女子早已断绝了“关系”。顾养民和田晓霞如同学们预料的那样，去年秋天都考上了大学。养民如愿地考进了省医学院，晓霞进了黄原师专中文系。', 'Images/cover/101-5.png', '厦门工学院', '路遥', '97', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('5', '2', '活着', '35.00', '我比现在年轻十岁的时候，获得了一个游手好闲的职业，去乡间收集民间歌谣。那一年的整个夏天，我如同一只乱飞', 'Images/cover/101-4.png', '厦门工学院', '余华', '97', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('11', '2', '康熙王朝', '100.00', 'test', 'Images/cover/20220628173938384.JPG', '厦门工学院', '学院', '100', '友敏');
INSERT INTO `book` VALUES ('13', '7', '人类简史', '20.00', '这是一本近几年爆冲上国际畅销书排行榜的历史书，风靡全球，几乎每一领域的大佬都要买来拜读。这本书给你一个全新的视角，来看人类的历史', 'Images/cover/2022062900213547.jpg', '厦门工学院', '尤瓦尔·赫拉利', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('14', '7', '道德经', '30.00', '道德经》应该是中华文明在世界上影响最大的经典了，世界上很多名人都是老子的粉丝，尼采、杜兰、托尔斯泰、彼得圣吉，据联合国教科文组织统计，《道德经》各种译本的总发行量仅次于《圣经》。\r\n\r\n人类的所有思想，如果回到最根本的那一点，或多或少都能从《道德经》中看到它的影子。两千多年前的老子，站在智慧的巅峰，为我们高屋建瓴地留下了这5162字，常读常新。', 'Images/cover/20220629002358544.jpg', '厦门工学院', '老子', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('15', '7', '万历十五年', '25.00', '一本书，前前后后读了近2周，读完后只想说写得精彩。\r\n\r\n《万历十五年》是一部改变中国人阅读方式的经典，是美籍华裔历史学家黄仁宇先生的成名之作\r\n\r\n万历十五年历史上平平淡淡的一年，却是明朝逐渐走向倾覆的一年。\r\n\r\n万历时期的蝴蝶效应，牵一发而动全身，谁都不无辜。', 'Images/cover/20220629002456883.jpg', '厦门工学院', '黄仁宇', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('16', '7', '毛泽东选集', '40.00', '经典之所以不朽，是因为它生长在读者的心头。由于历史原因，阅读《毛泽东选集》在一个时期是中国人政治生活的一件大事，它不仅是一部政治著作，还是一部哲学著作、历史著作甚至文学著作。《毛泽东选集》中很多篇目充满哲思和智慧，常读常新。\r\n\r\n这部著作不仅在历史上曾产生巨大影响，而且还具有重要的现实意义；不仅对中国人有吸引力，也在海外拥有很多“粉丝”。', 'Images/cover/20220629002552693.jpg', '厦门工学院', '毛泽东', '50', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('17', '13', '战争与和平', '34.00', '托翁一种系统性的历史观，在俄国反抗拿破仑侵略的背景下，通过四大家族的兴衰荣辱，让我们看到了那段历史的精彩片段，非常值得一看。\r\n\r\n托翁认为历史从来不是某一个人决定的，拿破仑也好，亚历山大大帝也罢，库图佐夫也一样，他们在自己的位置上被历史推动着做出了决策，并承受决策的后果。\r\n\r\n安德烈、皮埃尔、尼古拉、娜塔莎……每个人物都有其鲜明的形象，从中我们可以领略托翁出色的人物塑造能力。\r\n\r\n波澜壮阔，大气磅礴，篇幅巨大并永垂不朽的史诗画卷，情节、场面、人物都堪称完美。', 'Images/cover/20220629002659868.jpg', '厦门工学院', '列夫·尼古拉耶维奇·托尔斯泰', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('18', '1', '月亮与六便士', '50.00', '如果选择我最爱的作品，《月亮与六便士》一定名列其中。书中经典的那句“满地都是六便士，可他抬头看见了月亮”。\r\n\r\n银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一种自我绑架，唯有失去是通向自由之途。\r\n\r\n这本书的原型是法国艺术家高更，还增加了许多传奇细节，书里的艺术家有些选择是常人想做却不敢做的，可以让自己得到一些虚拟的满足。', 'Images/cover/20220629002807410.jpg', '厦门工学院', '威廉· 萨默赛特·毛姆', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('19', '13', '百年孤独', '33.00', '作者加西亚·马尔克斯于1982年获得诺贝尔文学奖，奠定世界级文学大师的地位，莫言也深受其影响。\r\n\r\n每个人都是孤独地出生，在这世间恍惚几十年并不漫长的日子转眼就远去了，然后再孤独地死去。 生命注定是个悲剧，因为我们从没有融入世界，世界永远是身外之物。\r\n\r\n此书最大的魅力所在就是，书里的任何一句话甚至到任何一个点，背后有着特别的意义。\r\n\r\n这本书的神奇之处在于，看完感觉自己像是活了一个世纪！\r\n\r\n看完这本书，给我的感觉是不仅像过了一生，还像过了好几代。', 'Images/cover/20220629002954625.jpg', '厦门工学院', '加西亚·马尔克斯', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('20', '14', '三体', '55.00', '三部曲《三体》《三体Ⅱ•黑暗森林》《三体Ⅲ•死神永生》) ，原名“地球往事三部曲”，是中国著名科幻作家刘慈欣的首个长篇系列。\r\n\r\n作品讲述了地球文明在宇宙中的兴衰历程。作品对人类历史、物理学、天文学、社会学及哲学等均有涉及，从科幻的角度对人性进行了深入探讨，全书格局宏大，立意高远，是中国科幻文学的里程碑之作，将中国科幻推上了世界的高度。\r\n\r\n我曾经耗时三个月看完了这三部神书，作为一名普通读者真心感谢大刘，感谢这部伟大的作品，感谢它每天陪伴我的时光，让我为了生计在尘世奔波的时候，也不忘时时仰望星空。', 'Images/cover/20220629003052543.jpg', '厦门工学院', '刘慈欣', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('21', '1', '怪诞心理学', '36.00', '这本书不单有趣，在我看来它很好地展示了心理学的学习和研究体系。当你尝试去思考和跟随作者写书的过程，就会真正接近心理学者的思维：不可崇拜结论，应当注重过程；在接受结论之前，应当先了解清楚当初问题提出的动机、验证的手法、筹集到的证据、归纳分析的方式。', 'Images/cover/20220629003204312.jpg', '厦门工学院', '理查德·怀斯曼', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('22', '5', '乌合之众', '25.00', '我想很多人都会有这样的疑惑：\r\n\r\n为什么明眼就知道是骗人的乡村宣讲会营销，有那么多当家的中老年人会上当？为什么有些人进了传销的坑，却深信不疑？\r\n\r\n看了这本书之后，我终于找到了答案。\r\n\r\n如果你想更好地了解群体效应，增长智慧，我建议你读读这本书。', 'Images/cover/20220629003248495.jpg', '厦门工学院', '古斯塔夫.勒庞', '100', '厦门工学院图书馆');
INSERT INTO `book` VALUES ('23', '2', '康熙王朝', '100.00', '', 'Images/cover/20220629103448705.JPG', '厦门工学院', '', '100', '');

-- ----------------------------
-- Table structure for `book_info`
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `num` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES ('1', '康熙王朝123', '123.123', '213', '生活');
INSERT INTO `book_info` VALUES ('2', '智慧全能', '100', '2', '请选择图书类型');
INSERT INTO `book_info` VALUES ('4', '智慧全能大学校园APP', '123', '2', '社科');
INSERT INTO `book_info` VALUES ('5', '智慧全能大学校园APP', '123', '2', '社科');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `typeId` int(255) NOT NULL,
  `balance` float(255,0) NOT NULL,
  `regdate` date NOT NULL,
  `tel` char(15) NOT NULL,
  `idNumber` char(18) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '刘增辉', '123', '3', '566', '2022-06-28', '13675026017', '350181200111151590');
INSERT INTO `member` VALUES ('2', '张三', '123', '1', '100', '2022-06-29', '13675026016', '350181200111151591');
INSERT INTO `member` VALUES ('3', '阿斯顿', '123', '1', '100', '2022-06-29', '13675026019', '300312199506150010');

-- ----------------------------
-- Table structure for `membertype`
-- ----------------------------
DROP TABLE IF EXISTS `membertype`;
CREATE TABLE `membertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `discount` int(255) NOT NULL,
  `recharge` int(255) NOT NULL,
  `keepDay` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of membertype
-- ----------------------------
INSERT INTO `membertype` VALUES ('1', '普通会员', '5', '100', '100', '30');
INSERT INTO `membertype` VALUES ('2', '白银会员', '8', '80', '200', '50');
INSERT INTO `membertype` VALUES ('3', '黄金会员', '10', '60', '400', '90');

-- ----------------------------
-- Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `rentDate` date NOT NULL,
  `backDate` date DEFAULT NULL,
  `deposit` float(255,0) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `isbn` char(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('11', '1', '5', '2022-06-28', '2022-06-28', '0', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('12', '1', '11', '2022-06-28', '2022-06-28', '0', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('13', '1', '3', '2022-06-28', '2022-06-28', '0', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('14', '1', '11', '2022-06-28', '2022-06-28', '0', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('15', '1', '5', '2022-06-28', '2022-06-28', '0', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('16', '1', '13', '2022-06-29', '2022-06-29', '0', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('17', '1', '20', '2022-06-29', '2022-06-29', '0', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('18', '1', '5', '2022-06-29', null, '11', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('19', '1', '1', '2022-06-29', null, '12', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('20', '1', '1', '2022-06-29', null, '12', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('21', '1', '1', '2022-06-29', null, '12', '1', '978-7-302-12260-9');
INSERT INTO `record` VALUES ('22', '1', '5', '2022-06-29', null, '11', '1', '978-7-302-12260-9');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '童书', '0');
INSERT INTO `type` VALUES ('2', '小说', '0');
INSERT INTO `type` VALUES ('3', '科技', '0');
INSERT INTO `type` VALUES ('4', '社科', '0');
INSERT INTO `type` VALUES ('5', '文艺', '0');
INSERT INTO `type` VALUES ('6', '动漫', '0');
INSERT INTO `type` VALUES ('7', '人文社科', '0');
INSERT INTO `type` VALUES ('8', '经管', '0');
INSERT INTO `type` VALUES ('13', '杂志', '0');
INSERT INTO `type` VALUES ('14', '科幻', '2');
INSERT INTO `type` VALUES ('15', '玄幻', '0');
INSERT INTO `type` VALUES ('16', '微小说', '2');
INSERT INTO `type` VALUES ('17', '武打', '2');
INSERT INTO `type` VALUES ('20', '童书', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` char(15) NOT NULL,
  `state` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1');
