require "data_mapper"

Dir["./app/models/*.rb"].each {|file| require file}

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/techmark_manager_#{env}")

DataMapper.finalize

DataMapper.auto_upgrade!
