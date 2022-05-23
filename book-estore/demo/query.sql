SET FOREIGN_KEY_CHECKS=0;
DROP SCHEMA IF EXISTS `book-store`;
CREATE SCHEMA `book-store`;

USE `book-store`;

SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE IF NOT EXISTS `book-store`.`tbl_category` (
`id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`category_name` VARCHAR(255) NULL DEFAULT NULL);

CREATE TABLE IF NOT EXISTS `book-store`.`tbl_book` (
`id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`sku` VARCHAR(255) DEFAULT NULL,
`_name` VARCHAR(255) DEFAULT NULL,
`_description` VARCHAR(255) DEFAUlT NULL,
`unit_price` DECIMAL(13,2) DEFAULT NULL,
`image_url` VARCHAR(255) DEFAULT NULL,
`_active` BIT DEFAULT 1,
`units_in_stock` INT(11) DEFAULT NULL,
`date_created` DATETIME DEFAULT NULL,
`last_updated` DATETIME DEFAULT NULL,
`category_id` BIGINT(20) NOT NULL,
FOREIGN KEY(`category_id`) REFERENCES `tbl_category` (`id`)
);

INSERT INTO tbl_category(category_name) VALUES ('Text Books');
INSERT INTO tbl_category(category_name) VALUES ('Horror');

INSERT INTO tbl_book(
sku,
_name,
_description,
image_url,
_active,
units_in_stock,
unit_price,
category_id,
date_created
)
VALUES
(
'text100',
'happens none',
'this calling',
'assets/images/books/text-100.png',
1,
756475855,
6.42,
2365853546573645837,
7/2/1456)
;





