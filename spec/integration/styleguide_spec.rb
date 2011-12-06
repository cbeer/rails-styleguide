require 'spec_helper'

describe "Styleguide Example" do
  before do
    visit styleguide_engine_path
  end

  context "layout" do
    it "should have a header" do
      page.should have_xpath("//header", :text => "Styleguide Example")
    end
  end

  context "section 1.1" do
    it "should have a header" do
      page.should have_selector ".styleguide-example h3", :text => "1.1"
    end

    it "should list the file" do
      page.should have_selector ".styleguide-example h3 em", :text => "buttons.css"
    end

    it "should describe the selector" do
      page.should have_selector ".styleguide-description"
    end

    it "should show examples of the element" do
      page.should have_selector ".styleguide-element"
    end
  end
end
