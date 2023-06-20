require "./config/database"
require "./src/models/*"
require "./db/migrations/*"
require "sam"

# Here you can define your tasks
load_dependencies "jennifer"

# desc "with description to be used by help command"
task "test" do
  puts "ping"
end

Sam.help
