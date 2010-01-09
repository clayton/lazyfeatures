require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "LazyFeatures" do
  describe "description" do
    LazyFeatures.description.should == "Lazily create Cucumber features for your Rails app"
  end
end