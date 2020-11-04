-- 创建数据库 字符集 
CREATE DATABASE IF NOT EXISTS test DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

-- 删除数据库 
DROP DATABASE test; 

-- 创建数据表 
-- CREATE TABLE table_name (olumns_name, column_type);
USE study_mysql;
CREATE TABLE `runoob_tbl`(
`runoob_id` INT UNSIGNED AUTO_INCREMENT,
`runoob_title` VARCHAR(100) NOT NULL,
`runoob_author` VARCHAR(40) NOT NULL,
`submission_date` DATE,
PRIMARY KEY (`runoob_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ;

-- 删除数据表 
-- DROP TABLE table_name 
-- DROP TABLE runoob_tbl;

-- 插入数据 
/* INSERT INTO table_name (field1, field2, ... fieldN)
					VALUES
					(value1, value2, ..., valueN);
*/
INSERT INTO runoob_tbl 
(runoob_title, runoob_author, submission_date)
VALUE
("学习PHP", '菜鸟教程', NOW());
INSERT INTO runoob_tbl 
(runoob_title, runoob_author, submission_date)
VALUE
("学习Mysql", '菜鸟教程', NOW());
INSERT INTO runoob_tbl 
(runoob_title, runoob_author, submission_date)
VALUE
("JAVA教程", 'RUNOOB.COM', '2016-05-06');

-- 查询语句, WHERE语句， order
-- SELECT column_name, column_name from table_name [WHERE clause] [LIMIT  N] [OFFSET M];
-- SELECT * FROM table_name;
SELECT count(1) AS num_data from runoob_tbl;
SELECT * from runoob_tbl;

-- THE WHERE clause is processed before the SELECT  clause,
-- 所以在where语句中不能用alias

SELECT 
-- 	runoob_title AS title 
-- 	runoob_author AS author 
-- 	submission_date AS sub_date 
*
FROM runoob_tbl 
WHERE submission_date > '2017-04-04';
