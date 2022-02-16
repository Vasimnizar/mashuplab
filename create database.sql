create database orkut;
 /* user table */
CREATE TABLE user(
   slno INT NOT NULL AUTO_INCREMENT,
   fname VARCHAR(100) NOT NULL,
   lname VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   paswrd VARCHAR(100) NOT NULL,
   PRIMARY KEY (email));

    /* user table */