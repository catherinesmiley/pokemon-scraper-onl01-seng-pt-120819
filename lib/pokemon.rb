require 'pry'

class Pokemon
  
  attr_accessor :name, :type, :db 
  attr_reader :id 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name 
    @type = type 
    @db = db 
  end 
  
  def self.save(name, type, db)
<<<<<<< HEAD
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type)
  end 
  
  def self.find(id, db)
    found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id).flatten
    self.new(id: found_pokemon[0], name: found_pokemon[1], type: found_pokemon[2], db: db)
=======
    sql = <<-SQL
      INSERT INTO pokemon (name, type, db)
      VALUES (?, ?, ?)
    SQL
    
    DB[:conn].execute(sql, self.name, self.type, save.db)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
>>>>>>> c504b09e00c9b7ee3d5bd9517debf95b21432584
  end 
    
end
