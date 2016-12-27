SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_plan`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_plan`;
CREATE TABLE `tbl_plan` (
  `id` int(11) NOT NULL auto_increment,
  `level` int(11) default NULL COMMENT '年级',
  `studentId` int(11) default NULL COMMENT '学生id',
  `subjectId` int(11) default NULL COMMENT '科目id',
  `clazz` int(11) default NULL COMMENT '归属班级(1代表1班,3代表3班)',
  `courseId` int(11) default NULL COMMENT '课程id',  
  `teacherId` int(11) default NULL COMMENT '老师id',
  `roomId` int(11) default NULL COMMENT '教室id',
  `weekNumber` int(11) default NULL COMMENT '周几',
  `lessonNumber` int(11) default NULL COMMENT '第几节课',
  `updatetime` timestamp NOT NULL default CURRENT_TIMESTAMP  COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_plan
-- ----------------------------
