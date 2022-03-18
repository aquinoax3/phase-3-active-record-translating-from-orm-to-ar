ActionRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/dog.sqlite"
)

sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dog (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
    )
SQL
ActiveRecord::Base.connection.execute(sql)




class Dog < ActionRecord::Base
end
