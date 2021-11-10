CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Roslyn Ball','user1','user1@gmail.com',md5("pass"),'https://via.placeholder.com/400/878fff?text=user1','2020-11-06 12:53:08'),
(2,'Barnett Leach','user2','user2@gmail.com',md5("pass"),'https://via.placeholder.com/400/710fff?text=user2','2020-11-08 06:53:18'),
(3,'Danielle Owens','user3','user3@gmail.com',md5("pass"),'https://via.placeholder.com/400/847fff?text=user3','2021-07-31 02:52:00'),
(4,'Deann Glass','user4','user4@gmail.com',md5("pass"),'https://via.placeholder.com/400/985fff?text=user4','2020-12-10 08:02:18'),
(5,'Bradley Gardner','user5','user5@gmail.com',md5("pass"),'https://via.placeholder.com/400/993fff?text=user5','2021-10-02 03:13:57'),
(6,'Manuela Mosley','user6','user6@gmail.com',md5("pass"),'https://via.placeholder.com/400/961fff?text=user6','2020-11-08 04:09:12'),
(7,'Kelli Duran','user7','user7@gmail.com',md5("pass"),'https://via.placeholder.com/400/731fff?text=user7','2020-01-24 11:15:55'),
(8,'Goff Garrett','user8','user8@gmail.com',md5("pass"),'https://via.placeholder.com/400/881fff?text=user8','2020-02-18 11:54:11'),
(9,'Marcie Byrd','user9','user9@gmail.com',md5("pass"),'https://via.placeholder.com/400/827fff?text=user9','2021-10-21 11:50:46'),
(10,'Aida Barry','user10','user10@gmail.com',md5("pass"),'https://via.placeholder.com/400/854fff?text=user10','2020-12-30 01:25:34');