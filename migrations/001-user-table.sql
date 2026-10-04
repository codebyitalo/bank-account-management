-- Source - https://stackoverflow.com/a/18389184
-- Posted by Erwin Brandstetter, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-10-04, License - CC BY-SA 4.0

SELECT 'CREATE DATABASE bank_account_project'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'bank_account_project')\gexec

CREATE TABLE User (
  ID bigint PRIMARY_KEY NOT NULL,
  FirstName varchar(150) NOT NULL,
  LastName varchar(100) NOT NULL,
  Amount DECIMAL(10, 2),
  Status ENUM('ACTIVE', 'INACTIVE')
)