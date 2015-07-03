require 'mongoid'

class MongoidConnector
  class Anything
    include Mongoid::Document
  end

  def connect
    mongoid_config_path = File.expand_path('mongoid.yml', './config')
    begin
      Mongoid.load!(mongoid_config_path)
    rescue 
      puts "Could not load #{mongoid_config_path}"
    end
    Anything.create
  end
end
