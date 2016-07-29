describe '#github_login' do 

  before(:each) do
    valid_github_login_setup
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:github]
    get :githun_login
  end

  it "should be valid" do
    expect(response).to be_success
  end

  it "should set user_id" do
    expect(session[:user_id]).to be_true
  end
end
