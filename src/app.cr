require "kemal"
require "./src/models/post"

get "/" do
  "Hello World!"
end

Kemal.run

