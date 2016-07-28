module OmniAuthTestHelper
  def valid_github_login_setup
    if Rails.env.test?
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
        provider: 'github',
        uid: '12345',
        info: {
          name: "Marshall"
          email: "mj@mj.com"

        },
        credentials: {
          token: "123456",
          expires_at: Time.now + 1.week
        }
      })
    end
  end

  def github_login_failure
    OmniAuth.config.mock_auth[:github] = :invalid_credentials
  end
end