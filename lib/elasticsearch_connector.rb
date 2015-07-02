require 'elasticsearch/model'
require 'active_record'

class ElasticsearchConnector
  class Anything < ActiveRecord::Base
    include Elasticsearch::Model
  end

  def connect
    Anything.import
  end
end
