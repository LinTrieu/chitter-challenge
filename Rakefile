require 'pg'

if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'
  
  RSpec::Core::RakeTask.new :spec
  
  task default: [:spec]
end

task :setup do
  connection = PG.connect
  connection.exec('CREATE DATABASE chitter;')

  connection = PG.connect :dbname => 'chitter';
  connection.exec('CREATE TABLE peeps (id SERIAL PRIMARY KEY, author VARCHAR(20), handle VARCHAR(20), content NCHAR(140), date DATE, time TIME);')
  connection.exec('CREATE TABLE users (id SERIAL PRIMARY KEY, author VARCHAR(20), handle VARCHAR(20)), email VARCHAR(60), password VARCHAR(140);')
end

task :chitter_db do
  connection = PG.connect :dbname => 'chitter';
  connection.exec ('TRUNCATE TABLE peeps;')
  connection.exec ("INSERT INTO peeps VALUES (1, 'Lin', '@LinnyCodes', 'Hey guys, this is my first peep', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
  connection.exec ("INSERT INTO peeps VALUES (2, 'Jayda', '@JMakers', 'This is another peep!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
  connection.exec ("INSERT INTO peeps VALUES (3, 'Megan', '@MegsDev', 'Just to check, third peep', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
end

task :setup_test do
  connection = PG.connect
  connection.exec('CREATE DATABASE chitter_test;')

  connection = PG.connect :dbname => 'chitter_test';
  connection.exec('CREATE TABLE peeps (id SERIAL PRIMARY KEY, author VARCHAR(20), handle VARCHAR(20), content NCHAR(140), date DATE, time TIME);')
  connection.exec('CREATE TABLE users (id SERIAL PRIMARY KEY, author VARCHAR(20), handle VARCHAR(20)), email VARCHAR(60), password VARCHAR(140);')
end

task :chitter_db_test do
  connection = PG.connect :dbname => 'chitter_test';
  connection.exec ('TRUNCATE TABLE peeps;')
  connection.exec ("INSERT INTO peeps VALUES (1, 'Lin', '@LinnyCodes', 'Test peep 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
  connection.exec ("INSERT INTO peeps VALUES (2, 'Jayda', '@JMakers', 'This is another test!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
  connection.exec ("INSERT INTO peeps VALUES (3, 'Megan', '@MegsDev', 'Just to check, third test', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
end
