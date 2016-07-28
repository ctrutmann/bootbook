
# require 'spec_helper'

describe "GET '/auth/github/callback'" do

  before(:each) do 
    valid_github_login_setup
    get "auth/github/callback"
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:github]
  end

  it "should set user_id" do
    expect(session[:user_id]).to eq(User.last.id)
  end

  it "should redirect to root url" do 
    expect(response).to redierect_to root_url
  end
end

describe "GET '/auth/failure'" do

  it "should redirect to root url" do 
    get "/auth/failure"
    expect(response).to redirect_to root_url
  end
end