require 'rubygems'

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/enviornment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

OmniAuth.config.test_mode = true
omniauth_hash = { 'provider' => 'github',
                  'uid'      => '12345',
                  'info'     => {
                    'name' => 'marshall',
                    'email' => 'mj@mj.com'
                  },


}
OmniAuth.config.add_mock(:github, omniauth_hash)
















