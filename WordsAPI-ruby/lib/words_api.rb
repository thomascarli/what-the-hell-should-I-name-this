# Common files
require 'words_api/api_client'
require 'words_api/api_error'
require 'words_api/version'
require 'words_api/configuration'

# Models
require 'words_api/models/base_object'
require 'words_api/models/definition'
require 'words_api/models/details_response'
require 'words_api/models/word_response'
require 'words_api/models/result'

# APIs
require 'words_api/api/words_api'

module WordsAPI
  class << self
    # Configure sdk using block.
    # WordsAPI.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
