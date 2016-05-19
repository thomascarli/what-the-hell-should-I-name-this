module WordsAPI
  # 
  class WordResponse < BaseObject
    attr_accessor :results
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'results' => :'results'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'results' => :'Array<Result>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'results']
        if (value = attributes[:'results']).is_a?(Array)
          self.results = value
        end
      end
      
    end

  end
end
