require "spec_helper"

RSpec.describe "Lobster rack app" do
  def app
    Rack::Lobster.new
  end

  let(:lobster_title) {"Lobstericious!"}
  let(:title) { "<title>#{lobster_title}</title>" }

  it "responds successfully" do
    get '/'
    expect(last_response).to be_ok
  end

  it "has the right title" do
    get '/'
    expect(last_response.body).to include(title)
  end
end
