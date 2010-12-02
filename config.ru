require "service"

set :run, false
set :environment, :production

run Sinatra::Application

