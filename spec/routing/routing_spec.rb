require 'rails_helper'

RSpec.describe "routing to get /", :type => :routing do
  it "routes get / to urls#new" do
    expect(:get => "/").to route_to(
      :controller => "urls",
      :action => "new"
    )
  end
end

RSpec.describe "routing to post /urls", :type => :routing do
  it "routes post /urls to urls#create" do
    expect(:post => "/urls").to route_to(
      :controller => "urls",
      :action => "create"
    )
  end
end

RSpec.describe "routing to urls", :type => :routing do
  it "routes get /:url to urls#show" do
    expect(:get => "/abcdef").to route_to(
      :controller => "urls",
      :action => "show",
      :short_url => "abcdef"
    )
  end
end
