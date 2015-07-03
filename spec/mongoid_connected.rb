RSpec.describe "Mongoid Connection" do
  require_relative '../lib/mongoid_connector'
  
  it "is established" do
    expect { MongoidConnector.new.connect }.not_to raise_error
  end
end
