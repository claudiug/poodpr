require 'rethinkdb'
include RethinkDB::Shortcuts
r.connect(:host=>"localhost", :port=>28015)
r.db("test").table_create("authors").run
