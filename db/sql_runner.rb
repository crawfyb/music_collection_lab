require('pg')

class SqlRunner


  def self.run(sql, values = [])
    begin #runs block. Might have some sort of mistakes
      db = PG.connect({dbname: 'music_collection', host: 'localhost'})
      db.prepare('query', sql)
      result = db.exec_prepared('query', values)
    ensure
      db.close() if db != nil
      #Even if there are mistakes. The ensure block makes sure that whatever happens the connection to the database is closed.
    end
    return result
  end


end
