require('pg')

class SqlRunner

  def self.run(sql, values=[])
    
    begin
      db = PG.connect({ dbname: 'music_database', host:'localhost'})
      db.prepare("entry", sql)
      result = db.exec_prepared("entry", values)
    ensure
      db.close() if db
    end
    return result
  end

end
