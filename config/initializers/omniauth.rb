Rails.application.config.middleware.use OmniAuth::Builder do

  provider :github, ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET'], scope: 'user:email'
    # provider :heroku, ENV.fetch('HEROKU_OAUTH_ID'), ENV.fetch('HEROKU_OAUTH_SECRET'), scope: 'user:email'
end
