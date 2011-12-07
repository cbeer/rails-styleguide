require 'spec_helper'

describe StyleguideController do
  before(:each) { @routes = Styleguide::Engine.routes }
  describe ".initialize_stylesheets_path_config" do
    it "should have a configuration key" do
      StyleguideController.config.stylesheets_path.should be_a_kind_of(Hash)
    end

    it "should have a default key (that corresponds to the rails asset pipeline stylesheets directory)" do
      StyleguideController.config.stylesheets_path[:default].should be_ends_with('dummy/app/assets/stylesheets')
    end
  end

  describe "#show" do
    it "should raise an error for an unknown styleguide id" do
      expect { get 'show', :id => 'asdf' }.to raise_error(ActionController::RoutingError)
    end

  end

end
