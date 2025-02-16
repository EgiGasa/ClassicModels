CREATE TABLE `employee_details` (
  `employee_number` int NOT NULL,
  `bank_account` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `personal_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_number`)
)