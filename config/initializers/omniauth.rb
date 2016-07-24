Rails.application.config.middleware.use OmniAuth::Builder do

  # provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET'],
    # scope: 'user:email'

  provider :github, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret

end
