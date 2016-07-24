Dotenv.load

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :github, ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET'], scope: 'user:email'
#
  # provider :github, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret

end
