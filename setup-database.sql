/* create a project database, and drop it first if it already exists */
DROP DATABASE IF EXISTS heart_disease;
CREATE DATABASE heart_disease;

/* create a database user, called francis, and drop it first if it already exists */
DROP USER IF EXISTS 'losheni'@'%';
CREATE USER 'losheni'@'%' IDENTIFIED WITH mysql_native_password BY 'l1234';

/* grant user access to the project data, which was created earlier */
GRANT ALL ON heart_disease.* TO 'losheni'@'%';

/* only for running in colab, grant user francis to server related configuration */
GRANT SELECT ON mysql.* TO 'losheni'@'%';
