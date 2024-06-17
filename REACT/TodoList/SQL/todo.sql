-- Active: 1717746144890@@127.0.0.1@3306@joeun
CREATE TABLE `todo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `status` int DEFAULT '0',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`)
) COMMENT='할일';

TRUNCATE TABLE todo;


INSERT INTO `todo` (`name`, `status`, `reg_date`, `upd_date`) VALUES
('Buy groceries', 0, '2024-06-13 10:00:00', '2024-06-13 10:00:00'),
('Finish project report', 1, '2024-06-13 11:00:00', '2024-06-13 12:00:00'),
('Schedule doctor appointment', 0, '2024-06-13 12:00:00', '2024-06-13 12:00:00'),
('Call plumber', 1, '2024-06-13 13:00:00', '2024-06-13 14:00:00'),
('Read a book', 0, '2024-06-13 14:00:00', '2024-06-13 14:00:00'),
('Go for a run', 0, '2024-06-13 15:00:00', '2024-06-13 15:00:00'),
('Complete online course', 1, '2024-06-13 16:00:00', '2024-06-13 17:00:00'),
('Plan weekend trip', 0, '2024-06-13 17:00:00', '2024-06-13 17:00:00'),
('Organize closet', 0, '2024-06-13 18:00:00', '2024-06-13 18:00:00'),
('Write a blog post', 1, '2024-06-13 19:00:00', '2024-06-13 20:00:00');
