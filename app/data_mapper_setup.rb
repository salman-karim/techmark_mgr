require "data_mapper"

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/techmark_manager_#{env}")

Dir["./app/models/*.rb"].each {|file| require file}

DataMapper.finalize

DataMapper.auto_upgrade!
