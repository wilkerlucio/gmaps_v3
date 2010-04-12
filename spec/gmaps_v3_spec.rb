require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "GmapsV3" do
  it "should use geocode api to retrieve a lat lng from an address" do
    info = GmapsV3.geocode_information("Rua Mamanguape, 255, Boa Viagem, Recife - PE, Brasil")
    
    info['status'].should == 'OK'
  end
end
