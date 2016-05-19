# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

WordsAPI.configure do |config|
  config.scheme = 'https'
  config.host = 'www.wordsapi.com'
  config.base_path = ''
  config.inject_format = false
  config.api_key['accessToken'] = ENV['WORDS_API_KEY']
end
