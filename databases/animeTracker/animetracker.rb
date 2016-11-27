require 'sqlite3'
 
db = SQLite3::Database.new("animelist.db")

create_ table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS animelist(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		episode_number INT,
		current_episode INT,
		complete BOOLEAN
	)
SQL
