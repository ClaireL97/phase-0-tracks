require 'sqlite3'
 
db = SQLite3::Database.new("animelist.db")
db.results_as_hash = true

create_ table_command = <<-SQL
	CREATE TABLE IF NOT EXISTS animelist(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		total_episodes INT,
		current_episode INT,
		completed BOOLEAN
	)
SQL

db.execute(create_table_command)

def add_anime(db,title,total_episodes,current_episode,completed)
	db.execute("INSERT INTO animelist(title,total_episodes,current_episode,completed VALUES(?,?,?,?)"[title,total_episodes,current_episode,completed])
end