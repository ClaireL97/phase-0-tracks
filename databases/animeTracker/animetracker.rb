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


#creating data for the table
add_anime(db,"Mahou Shoujo Ikusei Keikaku",12,9,false)
add_anime(db,"Log Horizon",25,25,true)
add_anime(db,"Nanatsu no Taizai",24,24,true)
add_anime(db,"Shokugeki no Soma",24,24,true)


#Data printing
anime = db.execute("SELECT * FROM animelist")
anime.each do |anime|
	puts "#{anime['title']} is #{anime['total_episodes']} episodes long and I am on episode #{current_episode}.}"
	if anime['completed'] == true
		puts "I finished this anime"
	else 
		puts "I still need to finish this one"
	end
end 