require 'spec_helper'

describe Styleguide do
  it "should be valid" do
    Styleguide.should be_a(Module)
  end
end