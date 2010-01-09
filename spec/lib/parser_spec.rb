require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "LazyFeatures" do
  describe "Parser" do
    before(:each) do
      # routes file
      # map.resource :account, :controller => "users"
      # map.resource :user_session
      # map.resources :conference_sessions
      # map.resources :registrations

      @routes_file = File.expand_path(File.dirname(__FILE__) + '/../fixtures/routes.rb')
      @parser = LazyFeatures::Parser.new(@routes_file)
    end

    describe "parse_resources" do
      before(:each) do
        @parser.parse_resources
      end
      it "should parse singleton resources" do
        @parser.singleton_resources.should_not be_nil
      end
      it "should parse collection resources" do
        @parser.collection_resources.should_not be_nil
      end
    end

    describe "parse_singletons" do
      before(:each) do
        @parser.parse_singletons
      end
      it "should parse the singleton resources" do
        @parser.singleton_resources.should include("account")
      end
    end

    describe "parse_collections" do
      before(:each) do
        @parser.parse_collections
      end
      it "should parse the collection resources" do
        @parser.collection_resources.should include("registrations")
      end
    end


  end
end