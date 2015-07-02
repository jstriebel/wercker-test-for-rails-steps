RSpec.describe "Elasticsearch Connection" do
  require_relative '../lib/elasticsearch_connector'
  require 'elasticsearch/model'
  
  it "is not established" do
    expect { ElasticsearchConnector.new.connect }.to raise_error(Faraday::ConnectionFailed)
  end
end
