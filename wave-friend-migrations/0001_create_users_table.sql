USE wave_friend; 

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    password VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    gender ENUM('woman', 'man', 'nonbinary', 'other') NOT NULL,
    bio TEXT NULL
); 