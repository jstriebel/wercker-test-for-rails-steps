RSpec.describe "Mongoid Connection" do
  require_relative '../lib/mongoid_connector'
  
  it "is not established due to missing configuration" do
    expect { MongoidConnector.new.connect }.to raise_error(Mongoid::Errors::NoSessionConfig)
  end
end
