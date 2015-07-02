RSpec.describe "Elasticsearch Connection" do
  require_relative '../lib/elasticsearch_connector'
  
  it "is established" do
    expect { ElasticsearchConnector.new.connect }.not_to raise_error
  end
end
