require "sinatra"
require "sinatra/reloader" if development?
require "pg"

require_relative "controllers/world_cup_controller.rb"
require_relative "models/group.rb"

use Rack::MethodOverride

run WorldCupController
