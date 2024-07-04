CREATE DATABASE IF NOT EXISTS partielDatabase;
USE partielDatabase;

CREATE TABLE IF NOT EXISTS messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'adminpassword';
GRANT ALL PRIVILEGES ON `partielDatabase`.* TO 'admin'@'localhost';
FLUSH PRIVILEGES;