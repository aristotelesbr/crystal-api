require "kemal"
require "json"
require "../config/database"
require "../src/models/*"

# TODO: Move to a separate file
# TODO: Add validation
# TODO: Add error handling
# This class is used to parse the JSON body of the request
class PintParams
  include JSON::Serializable

  property coordinates : Array(Int32)
end

get "/" do
  "Hello World!"
end

get "/posts" do
  Post.all.to_json
end

# TODO: Add validation
# TODO: Add error handling
# TODO: Add status code from the response
post "/posts" do |env|
  tags  = env.params.json["tags"].as(Array)
  text  = env.params.json["text"].as(String)
  title = env.params.json["title"].as(String)
  
  post = Post.create(title: title, text: text)

  # TODO: Inplement a better way to add tags
  post.to_h.merge(Hash{"tags" => tags}).to_json
end

# TODO: Add validation
# TODO: Add error handling
# TODO: Add status code from the response
post "/points" do |env|
  point_params = PintParams.from_json(env.request.body.not_nil!)
  point = Point.create(coordinates: point_params.coordinates)
  point.to_json
end

# TODO: Add fallback
get "/points" do
  Point.all.to_json
end

Kemal.run

