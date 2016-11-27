require 'sqlite3'
 
db = SQLite3::Database.new("animelist.db")
db.results_as_hash = true

create_table_command = <<-SQL
	CREATE TABLE IF NOT EXISTS animelist(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		total_episodes INT,
		current_episode INT
	)
SQL

db.execute(create_table_command)

def add_anime(db,title,total_episodes,current_episode)
	db.execute("INSERT INTO animelist(title,total_episodes,current_episode) VALUES(?,?,?)", [title,total_episodes,current_episode])
end

def current_episode_update(db,title,updated_episode)
	db.execute("UPDATE animelist SET current_episode=? WHERE title =?",[updated_episode,title])


end
#creating data for the table (COMMENT THIS OUT AFTER DATA ADDED ONCE)
# add_anime(db,"Mahou Shoujo Ikusei Keikaku",12,9)
# add_anime(db,"Log Horizon",25,25)
# add_anime(db,"Nanatsu no Taizai",24,24)
# add_anime(db,"Shokugeki no Soma",24,24)
current_episode_update(db,"Mahou Shoujo Ikusei Keikaku",12)


#Data printing
anime = db.execute("SELECT * FROM animelist")
anime.each do |anime|
	puts "#{anime['title']} is #{anime['total_episodes']} episodes long and I am on episode #{anime['current_episode']}."
end 