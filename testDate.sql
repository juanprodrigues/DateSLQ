create database testDate;
CREATE TABLE testAllDate (
    id INT AUTO_INCREMENT PRIMARY KEY,
     `date` date NULL,
      `datetime` datetime NULL,
       `time` time NULL,
        `timestamp` timestamp NULL,
          `year` year NULL
);



INSERT INTO `testDate`.`testAllDate` (`id`, `date`, `datetime`, `time`, `timestamp`, `year`)
VALUES ('1', '2020-12-12', '2020-12-12 00:00:00', '12:12:00', '2020-12-12 00:00:00', 2020);
