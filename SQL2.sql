/* complaint table */

CREATE TABLE complaint(
   slno INT NOT NULL AUTO_INCREMENT,
   comp_id INT NOT NULL,
   emp_id INT NOT NULL,
   short_descr MEDIUMTEXT NOT NULL,
   explanation MEDIUMTEXT NOT NULL,
   email VARCHAR(100) NOT NULL,
   comp_status ENUM (completed, Inprogress, stuck),
   PRIMARY KEY(comp_id),
   FOREIGN KEY (emp_id) REFERENCES employee(emp_id) )
   FOREIGN KEY (email) REFERENCES user(email) );  

   /* Agent table */
   CREATE TABLE agent(
   slno INT NOT NULL AUTO_INCREMENT,
   agent_id INT NOT NULL,
   comp_id INT NOT NULL,
   agent_name VARCHAR(200),
   comp_status ENUM (completed, Inprogress, stuck),
   FOREIGN KEY (comp_id) REFERENCES complaint(comp_id) );  

    /* Employee table */

CREATE TABLE employee(
   slno INT NOT NULL AUTO_INCREMENT,
   emp_id INT NOT NULL,
   emp_name VARCHAR(200),
   comp_id INT NOT NULL,
   PRIMARY KEY(emp_id),
   FOREIGN KEY (comp_id) REFERENCES complaint(comp_id) );