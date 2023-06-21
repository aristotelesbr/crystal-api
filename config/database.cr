require "jennifer"
require "jennifer/adapter/postgres"

Jennifer::Config.config.from_uri("postgres://postgres:postgres@0.0.0.0:5432/crystal_api/?sslmode=disable")

Jennifer::Config.configure do |conf|
  conf.adapter = "postgres"
  conf.logger = Log.for("db", :debug)
end
