create schema musicpulse
default character set cp1251
collate cp1251_ukrainian_ci;

use musicpulse;

CREATE TABLE user_
(
	user_id INT(11) AUTO_INCREMENT PRIMARY KEY,
	user_name VARCHAR(255) NOT NULL,
    user_password VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE song_
(
	song_id INT(11) AUTO_INCREMENT PRIMARY KEY,
	song_name VARCHAR(255) NOT NULL,
    song_author VARCHAR(255) NOT NULL,
    song_singer VARCHAR(255) NOT NULL,
    song_description VARCHAR(1000)
);

CREATE TABLE favorites
( 
	favorites_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    song_id INT(11) NOT NULL,
    user_id INT(11) NOT NULL
);