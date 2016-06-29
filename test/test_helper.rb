ENV['RACK_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/dsl'
require 'launchy'

module TestHelpers
  def teardown
    robot_world.delete_all
    super
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

Capybara.app = RobotWorldApp 

class FeatureTest < Minitest::Test
  include TestHelpers
  include Capybara::DSL
end
