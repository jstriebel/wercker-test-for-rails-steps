require 'elasticsearch/model'
require 'active_record'

ActiveRecord::Base.establish_connection( adapter: 'sqlite3', database: ":memory:" )
ActiveRecord::Schema.define(version: 1) { create_table(:anythings) { |t| t.string :text } }


class ElasticsearchConnector
  class Anything < ActiveRecord::Base
    include Elasticsearch::Model
  end

  def initialize
    Anything.create text: 'some sample text'
    Anything.create text: 'more foo'
    Anything.create text: 'abc and xyz'
  end

  def connect
    Anything.import
    response = Anything.search 'abc foo'
  end

end
