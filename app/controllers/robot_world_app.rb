require 'yaml/store'
class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :method_override, true

  get '/' do
    erb :dashboard
  end

  get '/robots' do
    @robots = robot_world.all
    erb :index
  end

  get '/robots/new' do
    erb :new
  end

  post '/robots' do
    robot_world.create(params[:robot])
    redirect '/robots'
  end

  get '/robots/:id' do
    @robot = robot_world.find(params[:id].to_i)
    erb :show
  end

  get '/robots/:id/edit' do
    @robot = robot_world.find(params[:id].to_i)
    erb :edit
  end

  put '/robots/:id' do
    robot_world.update(params[:id].to_i, params[:robot])
    redirect '/robots/' + params[:id]
  end

  delete '/robots/:id' do
    robot_world.destroy(params[:id].to_i)
    redirect '/robots'
  end

  def robot_world
    if ENV['RACK_ENV'] == 'test'
      world = YAML::Store.new("robot_world/robots_test")
    else
      world = YAML::Store.new("robot_world/robots")
    end
    @robot_world ||= RobotWorld.new(world)
  end
end
