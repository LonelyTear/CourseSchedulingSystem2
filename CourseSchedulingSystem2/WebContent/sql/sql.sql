	SET FOREIGN_KEY_CHECKS=0;
	
	-- ----------------------------
	-- Table structure for `tbl_room`
	-- ----------------------------
	DROP TABLE IF EXISTS `tbl_room`;
	CREATE TABLE `tbl_room` (
	  `id` int(11) NOT NULL auto_increment,
	  `name` varchar(255) default NULL COMMENT '教室名',
	  `clazzroomtype` int(11) default NULL COMMENT '教室类型(0食堂, 1 普通教室, 2计算机, 3艺术, 4体育)',
	  `islimit` int(11) default NULL COMMENT '是否有限制 (1有限制,0 无限制)',
	  `maxPersons` int(11) default NULL COMMENT '最大限制人数',
	  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '更新时间',
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
	
	-- ----------------------------
	-- Records of tbl_room
	-- ----------------------------
	
	
	INSERT INTO `tbl_room` VALUES ('1', '15人普教1', '1', '1', '20', '2015-06-11 11:30:45');
	INSERT INTO `tbl_room` VALUES ('2', '15人普教2', '1', '1', '30', '2015-06-11 11:31:24');
	INSERT INTO `tbl_room` VALUES ('3', '15人普教3', '1', '1', '20', '2015-06-11 11:33:09');
	INSERT INTO `tbl_room` VALUES ('4', '15人普教4', '1', '1', '40', '2015-06-11 13:34:43');
	INSERT INTO `tbl_room` VALUES ('5', '15人普教5', '1', '1', '50', '2015-06-11 13:34:54');
	INSERT INTO `tbl_room` VALUES ('6', '15人普教6', '1', '1', '20', '2015-06-11 13:35:17');
	INSERT INTO `tbl_room` VALUES ('7', '15人普教7', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('8', '15人普教8', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('9', '15人普教9', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('10', '15人普教10', '1', '1', '30', '2015-06-11 13:35:33');
	
	INSERT INTO `tbl_room` VALUES ('11', '15人普教1', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('12', '25人普教2', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('13', '25人普教3', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('14', '25人普教4', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('15', '25人普教5', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('16', '25人普教6', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('17', '25人普教7', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('18', '25人普教8', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('19', '25人普教9', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('20', '25人普教10', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('21', '25人普教11', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('22', '25人普教12', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('23', '25人普教13', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('24', '25人普教14', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('25', '25人普教15', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('26', '25人普教16', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('27', '25人普教17', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('28', '25人普教18', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('29', '25人普教19', '1', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('30', '25人普教20', '1', '1', '30', '2015-06-11 13:35:33');
	
	INSERT INTO `tbl_room` VALUES ('1111', '机算机房1', '2', '1', '40', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('1112', '机算机房2', '2', '1', '40', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('1113', '机算机房3', '2', '1', '40', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('1114', '钢琴教室1', '3', '1', '30', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('1115', '体育',  '4', '1', '100', '2015-06-11 13:35:33');
	INSERT INTO `tbl_room` VALUES ('1116', '食堂1', '0', '1', '20', '2015-06-11 11:30:45');
	-- ----------------------------
	-- Table structure for `tbl_course`
	-- ----------------------------
	DROP TABLE IF EXISTS `tbl_course`;
	CREATE TABLE `tbl_course` (
	  `id` int(11) NOT NULL auto_increment,
	  `name` varchar(255) default NULL COMMENT '课程名',
	  `level` int(11) default NULL COMMENT '年级',
	  `subjectId` int(11) default NULL COMMENT '课目',
	  `clazzRoomType` int(11) default NULL COMMENT '教室类型(0食堂, 1 普通教室, 2计算机, 3艺术, 4体育) ',
	  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP  COMMENT '更新时间',
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
	
	-- ----------------------------
	-- Records of tbl_course
	-- ----------------------------
	INSERT INTO `tbl_course` VALUES ('1', '5年级英文L1', '5', '1', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('2', '5年级数学L1', '5', '2', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('3', '5年级物理L1', '5', '3', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('4', '5年级化学L1', '5', '3', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('5', '5年级生物L1', '5', '3', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('6', '5年级政治L1', '5', '5', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('7', '5年级历史L1', '5', '5', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('8', '5年级外语(俄语)L1', '5', '6', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('9', '5年级外语(法语)L1', '5', '6', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('10', '5年级外语(日语)L1', '5', '6', '1', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('11', '5年级体育L1', '5', '7', '4', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('12', '5年级钢琴L1', '5', '7', '3', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('13', '5年级古筝L1', '5', '7', '3', '2015-06-11 13:47:57');
	INSERT INTO `tbl_course` VALUES ('14', '5年级汉语选修L1', '5', '8', '1', '2015-06-11 13:47:57');
	
	-- ----------------------------
	-- Table structure for `tbl_student`
	-- ----------------------------
	DROP TABLE IF EXISTS `tbl_student`;
	CREATE TABLE `tbl_student` (
	  `id` int(11) NOT NULL auto_increment,
	  `name` varchar(255) default NULL COMMENT '学生姓名',
	  `level` int(11) default NULL COMMENT '年级',
	  `address` varchar(255) default NULL COMMENT '地址',
	  `tuition` double(10,2) default NULL COMMENT '学费',
	  `birthdate` datetime default NULL COMMENT '生日',
	  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP  COMMENT '更新时间',
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
	
	-- ----------------------------
	-- Records of tbl_student
	-- ----------------------------
	INSERT INTO `tbl_student` VALUES (	'1',	'学生1'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'2',	'学生2'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'3',	'学生3'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'4',	'学生4'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'5',	'学生5'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'6',	'学生6'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'7',	'学生7'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'8',	'学生8'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'9',	'学生9'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	INSERT INTO `tbl_student` VALUES (	'10',	'学生10'	, '5', 'HangZhou', '1000.00', '1988-01-03 00:00:00', '2015-05-26 15:59:24');
	
	-- ----------------------------
	-- Table structure for `tbl_subject`
	-- ----------------------------
	DROP TABLE IF EXISTS `tbl_subject`;
	CREATE TABLE `tbl_subject` (
	  `id` int(11) NOT NULL auto_increment,
	  `name` varchar(255) default NULL COMMENT '课目名',
	  `majorFlag` int(11) default '1' COMMENT '主修标志,默认为1 (1代表主修,0代表选修,2代表饭点时间)',
	  `maxpersons` int(11) default '99999' COMMENT '最大限制人数',
	  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP  COMMENT '更新时间',
	  PRIMARY KEY  (`id`)	
	) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
	
	-- ----------------------------
	-- Records of tbl_subject
	-- ----------------------------
	INSERT INTO `tbl_subject` VALUES ('1', '英文', '1','15', '2015-06-11 13:52:08');
	INSERT INTO `tbl_subject` VALUES ('2', '数学', '1','25', '2015-06-11 13:52:08');
	INSERT INTO `tbl_subject` VALUES ('3', '科学', '1','25', '2015-06-11 13:52:08');
	INSERT INTO `tbl_subject` VALUES ('4', '中饭', '2','25', '2015-06-11 13:52:08');
	INSERT INTO `tbl_subject` VALUES ('5', '社会', '1','25', '2015-06-11 13:52:08');
	INSERT INTO `tbl_subject` VALUES ('6', '外语', '1','25', '2015-06-11 13:52:08');
	INSERT INTO `tbl_subject` VALUES ('7', '体育/艺术', '1','25', '2015-06-11 13:52:08');
	INSERT INTO `tbl_subject` VALUES ('8', '选修', 		   '0','25', '2015-06-11 13:52:08');
	
	-- ----------------------------
	-- Table structure for `tbl_grade`
	-- ----------------------------
	DROP TABLE IF EXISTS `tbl_grade`;
	CREATE TABLE `tbl_grade` (
	  `id` int(11) NOT NULL auto_increment,
	  `level` int(11)  COMMENT '年级',
	  `subjectId` int(11)  COMMENT '科目id',
	  `minPerDay` int(11)  COMMENT '最少每天上课数',
	  `maxPerDay` int(11) COMMENT '最多每天上课数',
	  `perWeek` int(11) COMMENT '每周上课数',
	  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP  COMMENT '更新时间',
	  PRIMARY KEY  (`id`)	
	) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
	
	-- ----------------------------
	-- Records of tbl_grade
	-- ----------------------------
	
	
	
	-- ----------------------------
	-- Table structure for `tbl_teacher`
	-- ----------------------------
	DROP TABLE IF EXISTS `tbl_teacher`;
	CREATE TABLE `tbl_teacher` (
	  `id` int(11) NOT NULL auto_increment,
	  `name` varchar(255) default NULL COMMENT '老师姓名',
	  `priority` int(11) default '2' COMMENT '优先级 1高,2中,3低',
	  `effect` int(10) default '1' COMMENT '启用标志 (1启用 , 0 禁用) [可理解为虚拟删除标记]',
	  `address` varchar(255) default NULL COMMENT '老师地址',
	  `birthdate` datetime default NULL COMMENT '生日',
	  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP  COMMENT '更新时间',
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
	
	-- ----------------------------
	-- Records of tbl_teacher
	-- ----------------------------
	INSERT INTO `tbl_teacher` VALUES ('1', '王老师', '2', '1',null, null, '2015-06-11 13:53:35');
	INSERT INTO `tbl_teacher` VALUES ('2', '李老师', '2', '1',null, null, '2015-06-11 13:53:36');
	INSERT INTO `tbl_teacher` VALUES ('3', '红老师', '2', '1',null, null, '2015-06-11 13:53:37');
	INSERT INTO `tbl_teacher` VALUES ('4', '朱老师', '2', '1',null, null, '2015-06-11 13:53:38');
	INSERT INTO `tbl_teacher` VALUES ('5', '刘老师', '2', '1',null, null, '2015-06-11 13:53:39');
	INSERT INTO `tbl_teacher` VALUES ('6', '周老师', '2', '1',null, null, '2015-06-11 13:53:40');
	INSERT INTO `tbl_teacher` VALUES ('7', '吴老师', '2', '1',null, null, '2015-06-11 13:53:41');
	INSERT INTO `tbl_teacher` VALUES ('8', '郑老师', '2', '1',null, null, '2015-06-11 13:53:42');
	INSERT INTO `tbl_teacher` VALUES ('9', '赵老师', '2', '1',null, null, '2015-06-11 13:53:42');
	INSERT INTO `tbl_teacher` VALUES ('10', '钱老师', '2', '1',null, null, '2015-06-11 13:53:42');
	INSERT INTO `tbl_teacher` VALUES ('11', '孙老师', '2', '1', null, null, '2015-06-11 13:53:42');
	INSERT INTO `tbl_teacher` VALUES ('12', '夏老师', '2', '1',null, null, '2015-06-11 13:53:42');
	INSERT INTO `tbl_teacher` VALUES ('13', '商老师', '2', '1',null, null, '2015-06-11 13:53:42');
	INSERT INTO `tbl_teacher` VALUES ('14', '唐老师', '2', '1',null, null, '2015-06-11 13:53:42');
	INSERT INTO `tbl_teacher` VALUES ('15', '宋老师', '2', '1',null, null, '2015-06-11 13:53:42');
	-- ----------------------------
	-- Table structure for `tbl_teachersubject`
	-- ----------------------------
	DROP TABLE IF EXISTS `tbl_teachersubject`;
	CREATE TABLE `tbl_teachersubject` (
	  `id` int(11) NOT NULL auto_increment,
	  `teacherId` int(10) default NULL COMMENT '老师id',
	  `name` varchar(255) default NULL COMMENT '姓名',
	  `courseId` int(10) default NULL COMMENT '课程id',
	  `courseName` varchar(255) default NULL comment '课程名',
	  `level` int(10) default NULL COMMENT '年级',
	  `subjectId` int(10) default NULL COMMENT '科目id',
	  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP  COMMENT '更新时间',
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
	
	-- ----------------------------
	-- Records of tbl_teachersubject
	-- ----------------------------
	-- 																	id自增	#老师id	老师名			#课程id	课程名					年级		科目id	更新时间		
	INSERT INTO `tbl_teachersubject` VALUES ('1'		,'1'		, '王老师'		, '1'		, '5年级英文L1'		, '5'		, '1'		, '2015-06-11 13:52:57');
	INSERT INTO `tbl_teachersubject` VALUES ('2'		,'1'		, '王老师'		, '2'		, '5年级数学L1'		, '5'		, '2'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('3'		,'2'		, '李老师'		, '3'		, '5年级物理L1'		, '5'		, '3'		, '2015-06-11 13:52:57');
	INSERT INTO `tbl_teachersubject` VALUES ('4'		,'2'		, '李老师'		, '4'		, '5年级化学L1'		, '5'		, '3'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('5'		,'3'		, '红老师'		, '5'		, '5年级生物L1'		, '5'		, '3'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('6'		,'4'		, '朱老师'		, '6'		, '5年级政治L1'		, '5'		, '5'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('7'		,'5'		, '刘老师'		, '7'		, '5年级历史L1'		, '5'		, '5'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('8'		,'6'		, '周老师'		, '8'		, '5年级外语(俄语)L1'		, '5'		, '6'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('9'		,'7'		, '吴老师'		, '9'		, '5年级外语(法语)L1'		, '5'		, '6'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('10'		,'8'		, '郑老师'		, '10'		, '5年级外语(日语)L1'		, '5'		, '6'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('11'		,'9'		, '赵老师'		, '11'		, '5年级体育L1'		, '5'		, '7'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('12'		,'10'		, '钱老师'		, '12'		, '5年级钢琴L1'		, '5'		, '7'		, '2015-06-11 13:52:57');
	INSERT INTO `tbl_teachersubject` VALUES ('13'		,'10'		, '钱老师'		, '13'		, '5年级古筝L1'		, '5'		, '7'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('14'		,'11'		, '孙老师'		, '14'		, '5年级汉语选修L1'		, '5'		, '8'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('15'		,'12'		, '夏老师'		, '1'		, '5年级英文L1'		, '5'		, '1'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('16'		,'13'		, '商老师'		, '1'		, '5年级英文L1'		, '5'		, '1'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('17'		,'13'		, '唐老师'		, '1'		, '5年级数学L1'		, '5'		, '2'		, '2015-06-11 13:52:57');
	
	INSERT INTO `tbl_teachersubject` VALUES ('18'		,'13'		, '宋老师'		, '10'		, '5年级物理L1'		, '5'		, '3'		, '2015-06-11 13:52:57');
