require 'mongoid'

class MongoidConnector
  class Anything
    include Mongoid::Document
  end

  def connect
    Anything.create
  end
end
