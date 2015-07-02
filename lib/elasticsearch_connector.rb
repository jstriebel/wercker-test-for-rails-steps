require 'elasticsearch/model'
require 'active_record'

ActiveRecord::Base.establish_connection( adapter: 'sqlite3', database: ":memory:" )
ActiveRecord::Schema.define(version: 1) { create_table(:anythings) { |t| t.string :text } }


class ElasticsearchConnector
  class Anything < ActiveRecord::Base
    include Elasticsearch::Model
  end

  def initialize
    Anything.create text: 'Quick brown fox'
    Anything.create text: 'Fast black dogs'
    Anything.create text: 'Swift green frogs'
  end

  def connect
    Anything.import
    response = Article.search 'fox dogs'
  end

end
