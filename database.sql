CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`username` varchar(50) NOT NULL,
`password` varchar(32) NOT NULL,
`name` varchar(100) NOT NULL,
PRIMARY KEY (`id`)
);
 
INSERT INTO `users` (`username`, `password`, `name`) VALUES
('user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Budi');
 
CREATE TABLE `access_privileges` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`user_id` INT UNSIGNED NOT NULL,
`client_id` varchar(32) NOT NULL,
`code` VARCHAR(32) NOT NULL,
`access_token` VARCHAR(32) NOT NULL,
`redirect_uri` TEXT NOT NULL,
`expires` BIGINT UNSIGNED NOT NULL
);
 
CREATE TABLE `apps_clients` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`client_id` VARCHAR(32) NOT NULL,
`client_secret` VARCHAR(32) NOT NULL,
`logout_url` TEXT NOT NULL
);
 
INSERT INTO `apps_clients` (
`id`, `client_id`, `client_secret`, `logout_url`)
VALUES (NULL, 'c4ca4238a0b923820dcc509a6f75849b',
'4fc9b72a83a99a594d40b3971874a9be',
'http://localhost/client/auth.php?self_logout'
);

