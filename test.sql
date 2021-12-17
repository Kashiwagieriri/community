/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 16/11/2021 22:40:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NOT NULL,
  `type` int NOT NULL COMMENT '父类id',
  `commentator` bigint NULL DEFAULT NULL COMMENT '评论人id\n',
  `gmt_create` bigint NOT NULL,
  `gmt_modified` bigint NOT NULL,
  `like_count` bigint NULL DEFAULT 0,
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (77, 93, 1, 27, 1637062294521, 1637062294521, 0, 'b');
INSERT INTO `comment` VALUES (78, 94, 1, 26, 1637062349485, 1637062349485, 0, 'd');
INSERT INTO `comment` VALUES (79, 93, 1, 27, 1637062376216, 1637062376216, 0, 'cccc');
INSERT INTO `comment` VALUES (80, 93, 1, 26, 1637063144052, 1637063144052, 0, 'fdgfdsgdsgfdsgds');
INSERT INTO `comment` VALUES (81, 93, 1, 26, 1637063147849, 1637063147849, 0, 'gdfsgfsdg\ngfdsgffds\ngfd');
INSERT INTO `comment` VALUES (82, 93, 1, 26, 1637063150038, 1637063150038, 0, 'gfdsgds');
INSERT INTO `comment` VALUES (83, 93, 1, 26, 1637063151792, 1637063151792, 0, 'gfdsgfsd');
INSERT INTO `comment` VALUES (84, 93, 1, 26, 1637063153425, 1637063153425, 0, 'gfdsgsfdgf');
INSERT INTO `comment` VALUES (85, 93, 1, 26, 1637063155243, 1637063155243, 0, 'gfsdgd');
INSERT INTO `comment` VALUES (86, 93, 1, 26, 1637063156787, 1637063156787, 0, 'gfdsgfdsg');
INSERT INTO `comment` VALUES (87, 94, 1, 26, 1637063180982, 1637063180982, 0, 'fdsfsa');
INSERT INTO `comment` VALUES (88, 94, 1, 26, 1637063182622, 1637063182622, 0, 'fdsfas');
INSERT INTO `comment` VALUES (89, 94, 1, 26, 1637063184026, 1637063184026, 0, 'sdfasd');
INSERT INTO `comment` VALUES (90, 94, 1, 26, 1637063185866, 1637063185866, 0, 'fsdsa');
INSERT INTO `comment` VALUES (91, 94, 1, 26, 1637063187435, 1637063187435, 0, 'fdsafas');
INSERT INTO `comment` VALUES (92, 94, 1, 26, 1637063189049, 1637063189049, 0, 'fdsafa');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notifier` bigint NOT NULL,
  `receiver` bigint NOT NULL,
  `outerId` bigint NULL DEFAULT NULL,
  `type` int NOT NULL,
  `gmt_create` bigint NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `notifier_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `outer_title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES (16, 27, 26, 93, 1, 1637062294534, 0, 'abc', 'a');
INSERT INTO `notification` VALUES (17, 26, 27, 94, 1, 1637062349489, 0, 'KashiwagiEriri', 'c');
INSERT INTO `notification` VALUES (18, 27, 26, 93, 1, 1637062376219, 0, 'abc', 'a');
INSERT INTO `notification` VALUES (19, 26, 26, 93, 1, 1637063144055, 0, 'KashiwagiEriri', 'a');
INSERT INTO `notification` VALUES (20, 26, 26, 93, 1, 1637063147851, 0, 'KashiwagiEriri', 'a');
INSERT INTO `notification` VALUES (21, 26, 26, 93, 1, 1637063150043, 0, 'KashiwagiEriri', 'a');
INSERT INTO `notification` VALUES (22, 26, 26, 93, 1, 1637063151795, 0, 'KashiwagiEriri', 'a');
INSERT INTO `notification` VALUES (23, 26, 26, 93, 1, 1637063153428, 0, 'KashiwagiEriri', 'a');
INSERT INTO `notification` VALUES (24, 26, 26, 93, 1, 1637063155248, 0, 'KashiwagiEriri', 'a');
INSERT INTO `notification` VALUES (25, 26, 26, 93, 1, 1637063156790, 1, 'KashiwagiEriri', 'a');
INSERT INTO `notification` VALUES (26, 26, 27, 94, 1, 1637063180985, 0, 'KashiwagiEriri', 'c');
INSERT INTO `notification` VALUES (27, 26, 27, 94, 1, 1637063182625, 0, 'KashiwagiEriri', 'c');
INSERT INTO `notification` VALUES (28, 26, 27, 94, 1, 1637063184030, 0, 'KashiwagiEriri', 'c');
INSERT INTO `notification` VALUES (29, 26, 27, 94, 1, 1637063185869, 0, 'KashiwagiEriri', 'c');
INSERT INTO `notification` VALUES (30, 26, 27, 94, 1, 1637063187439, 1, 'KashiwagiEriri', 'c');
INSERT INTO `notification` VALUES (31, 26, 27, 94, 1, 1637063189053, 1, 'KashiwagiEriri', 'c');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `gmt_create` bigint NULL DEFAULT NULL,
  `gmt_modified` bigint NULL DEFAULT NULL,
  `creator` bigint NULL DEFAULT NULL,
  `comment_count` int NULL DEFAULT 0,
  `view_count` int NULL DEFAULT 0,
  `like_count` int NULL DEFAULT 0,
  `tag` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (93, 'a', 'a', 1637062280074, 1637062280074, 26, 9, 19, 0, 'a');
INSERT INTO `question` VALUES (94, 'c', 'c', 1637062324337, 1637062324337, 27, 7, 13, 0, 'c');
INSERT INTO `question` VALUES (95, '求助 HTML', '```html\r\n<!DOCTYPE HTML>\r\n<html xmlns:th=\"http://www.thymeleaf.org\">\r\n<head>\r\n    <title th:text=\"${sectionName}\"></title>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n    <link rel=\"stylesheet\" href=\"/css/bootstrap.min.css\"/>\r\n    <link rel=\"stylesheet\" href=\"/css/bootstrap-theme.css\"/>\r\n    <link rel=\"stylesheet\" href=\"/css/community.css\"/>\r\n    <script src=\"/js/jquery.min.js\" type=\"application/javascript\"></script>\r\n    <script src=\"/js/bootstrap.js\" type=\"application/javascript\"></script>\r\n</head>\r\n<body>\r\n<div th:insert=\"~{navigation :: nav}\"></div>\r\n<div class=\"container-fluid main profile\">\r\n    <div class=\"row\">\r\n        <div class=\"col-lg-9 col-md-12\">\r\n            <h2><span th:text=\"${sectionName}\"></span></h2>\r\n            <hr>\r\n\r\n            <div class=\"col-lg-12\" th:if=\"${section == \'questions\'}\">\r\n                <div class=\"media\" th:each=\"question : ${pagination.data}\">\r\n                    <div class=\"media-left\">\r\n                        <a href=\"#\">\r\n                            <img class=\"media-object img-rounded\"\r\n                                 th:src=\"${question.user.avatarUrl}\">\r\n                        </a>\r\n                    </div>\r\n                    <div class=\"media-body\">\r\n                        <h4 class=\"media-heading\">\r\n                            <a th:href=\"@{\'/question/\'+ ${question.id}}\" th:text=\"${question.title}\"></a>\r\n                        </h4>\r\n                        <span class=\"text-desc\">\r\n                        <span th:text=\"${question.commentCount}\"></span> 个回复 <span\r\n                                th:text=\"${question.viewCount}\"></span> 次浏览 <span\r\n                                th:text=\"${#dates.format(question.gmtCreate,\'yyyy-MM-dd HH:mm\')}\">\r\n\r\n                        </span> •\r\n                        <a th:href=\"@{\'/publish/\'+${question.id}}\" class=\"community-menu\"\r\n                           th:if=\"${session.user != null && session.user.id == question.creator}\">\r\n                        <span class=\"glyphicon glyphicon-pencil\" aria-hidden=\"true\">编辑</span>\r\n                    </a>\r\n                    </span>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-12\" th:if=\"${section == \'replies\'}\">\r\n                <div class=\"media\" th:each=\"notification : ${pagination.data}\">\r\n                    <div class=\"media-body\">\r\n                        <p class=\"media-heading\">\r\n                            <span th:text=\"${notification.notifierName +\' \' + notification.typeName + \' \'}\"></span>\r\n                            <a th:href=\"@{\'/notification/\'+ ${notification.id}}\"\r\n                               th:text=\"${notification.outerTitle}\">\r\n                            </a>\r\n                            <span class=\"label label-danger\" th:if=\"${notification.status == 0}\">未读</span>\r\n                            <span class=\"pull-right text-dsc\" th:text=\"${#dates.format(notification.gmtCreate,\'yyyy-MM-dd HH:mm\')}\"></span>\r\n\r\n                        </p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-12\">\r\n                <nav aria-label=\"Page navigation\">\r\n                    <ul class=\"pagination\">\r\n                        <li th:if=\"${pagination.showFirstPage}\">\r\n                            <a th:href=\"@{\'/profile/\'+${section}(page=${1})}\"\r\n                               aria-label=\"Previous\">\r\n                                <span aria-hidden=\"true\">&lt;&lt;</span>\r\n                            </a>\r\n                        </li>\r\n                        <li th:if=\"${pagination.showPrevious}\">\r\n                            <a th:href=\"@{\'/profile/\'+${section}(page=${pagination.page - 1})}\" aria-label=\"Previous\">\r\n                                <span aria-hidden=\"true\">&lt;</span>\r\n                            </a>\r\n                        </li>\r\n\r\n                        <li th:each=\"page : ${pagination.pages}\" th:class=\"${pagination.page == page}? \'active\' : \'\'\">\r\n                            <a th:href=\"@{\'/profile/\'+${section}(page=${page})}\" th:text=\"${page}\"></a>\r\n                        </li>\r\n\r\n                        <li th:if=\"${pagination.showNext}\">\r\n                            <a th:href=\"@{\'/profile/\'+${section}(page=${pagination.page +1})}\" aria-label=\"Previous\">\r\n                                <span aria-hidden=\"true\">&gt;</span>\r\n                            </a>\r\n                        </li>\r\n                        <li th:if=\"${pagination.showEndPage}\">\r\n                            <a th:href=\"@{\'/profile/\'+${section}(page=${pagination.totalPage})}\" aria-label=\"Previous\">\r\n                                <span aria-hidden=\"true\">&gt;&gt;</span>\r\n                            </a>\r\n                        </li>\r\n                    </ul>\r\n                </nav>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-12\">\r\n            <div class=\"list-group section\">\r\n                <a href=\"/profile/questions\"\r\n                   th:class=\"${section == \'questions\'}? \'active list-group-item\' : \'list-group-item\'\">我的问题</a>\r\n                <a href=\"/profile/replies\"\r\n                   th:class=\"${section == \'replies\'}? \'active list-group-item\' : \'list-group-item\'\">\r\n                    最新回复\r\n                    <span class=\"label label-danger\" th:text=\"${session.unreadCount}\"></span>\r\n                </a>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n</body>\r\n</html>\r\n```', 1637064203272, 1637064203272, 27, 0, 3, 0, 'HTML');
INSERT INTO `question` VALUES (96, 'Java', 'test', 1637069682043, 1637069682043, 26, 0, 0, 0, 'Java');
INSERT INTO `question` VALUES (97, 'JavaJavaJava', '```java\r\npackage com.example.demo.controller;\r\n\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.boot.web.servlet.error.ErrorController;\r\nimport org.springframework.http.HttpStatus;\r\nimport org.springframework.http.MediaType;\r\nimport org.springframework.stereotype.Controller;\r\nimport org.springframework.ui.Model;\r\nimport org.springframework.web.bind.annotation.RequestMapping;\r\nimport org.springframework.web.servlet.ModelAndView;\r\n\r\nimport javax.servlet.http.HttpServletRequest;\r\n\r\n@Controller\r\n@RequestMapping(\"${server.error.path:${error.path:/error}}\")\r\npublic class CustomizeErrorController implements ErrorController {\r\n\r\n    @Autowired\r\n    public String getErrorPath() {\r\n        return \"error\";\r\n    }\r\n\r\n    @RequestMapping(produces = MediaType.TEXT_HTML_VALUE)\r\n    public ModelAndView errorHtml(HttpServletRequest request, Model model) {\r\n        HttpStatus status = getStatus(request);\r\n        if (status.is4xxClientError()) {\r\n            model.addAttribute(\"message\", \"Your request failed\");\r\n        }\r\n        if (status.is5xxServerError()) {\r\n            model.addAttribute(\"message\", \"Server overload\");\r\n        }\r\n        return new ModelAndView(\"error\");\r\n    }\r\n\r\n    private HttpStatus getStatus(HttpServletRequest request) {\r\n        Integer statusCode = (Integer) request\r\n                .getAttribute(\"javax.servlet.error.status_code\");\r\n        if (statusCode == null) {\r\n            return HttpStatus.INTERNAL_SERVER_ERROR;\r\n        }\r\n        try {\r\n            return HttpStatus.valueOf(statusCode);\r\n        } catch (Exception ex) {\r\n            return HttpStatus.INTERNAL_SERVER_ERROR;\r\n        }\r\n\r\n    }\r\n}\r\n```', 1637070118370, 1637072485255, 26, 0, 3, 0, 'java');
INSERT INTO `question` VALUES (98, 'JavaJavaJava', 'javacccc', 1637070118370, 1637070148046, 26, 0, 1, 0, 'java');
INSERT INTO `question` VALUES (99, 'JavaJavaJava', 'javacccc', 1637070118370, 1637070148046, 26, 0, 1, 0, 'java');
INSERT INTO `question` VALUES (100, 'JavaJavaJava', 'javacccc', 1637070118370, 1637070148046, 26, 0, 1, 0, 'java');
INSERT INTO `question` VALUES (101, 'JavaJavaJava', 'javacccc', 1637070118370, 1637070148046, 26, 0, 1, 0, 'java');
INSERT INTO `question` VALUES (102, 'JavaJavaJava', 'javacccc', 1637070118370, 1637070148046, 26, 0, 1, 0, 'java');
INSERT INTO `question` VALUES (103, 'JavaJavaJava', 'javacccc', 1637070118370, 1637070148046, 26, 0, 1, 0, 'java');
INSERT INTO `question` VALUES (104, 'HTML　QUESTION', '```html\r\n<!DOCTYPE HTML>\r\n<html xmlns:th=\"http://www.thymeleaf.org\">\r\n<head>\r\n    <title>社区首页</title>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\r\n    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\r\n    <link rel=\"stylesheet\" href=\"css/bootstrap-theme.css\"/>\r\n    <link rel=\"stylesheet\" href=\"css/community.css\"/>\r\n    <script src=\"js/jquery.min.js\" type=\"application/javascript\"></script>\r\n    <script src=\"js/bootstrap.js\" type=\"application/javascript\"></script>\r\n</head>\r\n<script type=\"application/javascript\">\r\n    window.onload = function () {\r\n        debugger;\r\n        var closable = window.localStorage.getItem(\"closable\");\r\n        if (closable == \"true\") {\r\n            window.close();\r\n            window.localStorage.removeItem(\"closable\");\r\n        }\r\n    }\r\n</script>\r\n<body>\r\n<div th:insert=\"~{navigation :: nav}\">\r\n</div>\r\n<div class=\"container-fluid main\">\r\n    <div class=\"row\">\r\n        <div class=\"col-lg-9 col-md-12\">\r\n            <h2><span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> 发现</h2>\r\n            <hr>\r\n\r\n            <div class=\"media\" th:each=\"question : ${pagination.data}\">\r\n                <div class=\"media-left\">\r\n                    <a href=\"#\">\r\n                        <img class=\"media-object img-rounded\" th:src=\"${question.user.avatarUrl}\">\r\n                    </a>\r\n                </div>\r\n\r\n                <div class=\"media-body\">\r\n                    <h4 class=\"media-heading\">\r\n                        <a th:href=\"@{\'/question/\' + ${question.id}}\" th:text=\"${question.title}\"></a>\r\n                    </h4>\r\n<!--                    <span th:text=\"${question.description}\"></span><br>-->\r\n                    <span class=\"text-dsc\">\r\n                        <span th:text=\"${question.commentCount}\"></span>\r\n                        &nbsp个回复&nbsp<span th:text=\"${question.viewCount}\"></span>&nbsp次浏览&nbsp发布时间&nbsp<span\r\n                            th:text=\"${#dates.format(question.gmtCreate,\'yyyy-MM-dd HH:mm\')}\"></span>&nbsp&nbsp&nbsp&nbsp&nbsp\r\n                        <span class=\"label label-info question-tag\" th:each=\"tag : ${question.tag.split(\'，\')}\">\r\n                        <span class=\"label label-info \" th:text=\"${tag}\">info</span></span>\r\n                    </span>\r\n                </div>\r\n\r\n            </div>\r\n            <nav aria-label=\"Page navigation\">\r\n                <ul class=\"pagination\">\r\n                    <li th:if=\"${pagination.showFirstPage}\">\r\n                        <a href=\"/?page=1\" aria-label=\"Previous\">\r\n                            <span aria-hidden=\"true\">&lt;&lt;</span>\r\n                        </a>\r\n                    </li>\r\n                    <li th:if=\"${pagination.showPrevious}\">\r\n                        <a th:href=\"@{/(page=${pagination.page -1})}\" aria-label=\"Previous\">\r\n                            <span aria-hidden=\"true\">&lt;</span>\r\n                        </a>\r\n                    </li>\r\n\r\n                    <li th:each=\"page : ${pagination.pages}\" th:class=\"${pagination.page == page}? \'active\' : \'\'\">\r\n                        <a th:href=\"@{/(page=${page})}\" th:text=\"${page}\" aria-label=\"Previous\">\r\n                            page\r\n                        </a>\r\n                    </li>\r\n                    <li th:if=\"${pagination.showNext}\">\r\n                        <a th:href=\"@{/(page=${pagination.page +1})}\" aria-label=\"Previous\" >\r\n                            <span aria-hidden=\"true\">&gt;</span>\r\n                        </a>\r\n                    </li>\r\n                    <li th:if=\"${pagination.showEndPage}\">\r\n                        <a th:href=\"@{/(page=${pagination.totalPage})}\" aria-label=\"Previous\">\r\n                            <span aria-hidden=\"true\">&gt;&gt;</span>\r\n                        </a>\r\n                    </li>\r\n                </ul>\r\n            </nav>\r\n        </div>\r\n</div>\r\n</body>\r\n</html>\r\n```', 1637071721210, 1637071721210, 26, 0, 10, 0, 'HTML，JS');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `token` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gmt_create` bigint NULL DEFAULT NULL,
  `gmt_modified` bigint NULL DEFAULT NULL,
  `bio` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (26, '63351261', 'KashiwagiEriri', '3cfbedc0-75a3-40df-a062-cb1a56259286', 1637062099100, 1637062265677, NULL, 'https://avatars.githubusercontent.com/u/63351261?v=4');
INSERT INTO `user` VALUES (27, '94336549', 'abc', '63c7daec-f0f1-4ab1-b12b-1e5f86b47b02', 1637062199311, 1637062199311, NULL, 'https://avatars.githubusercontent.com/u/94336549?v=4');

SET FOREIGN_KEY_CHECKS = 1;
