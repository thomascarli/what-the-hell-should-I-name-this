module WordsAPI
  # 
  class Definition < BaseObject
    attr_accessor :definition, :part_of_speech
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'definition' => :'definition',
        
        # 
        :'part_of_speech' => :'partOfSpeech'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'definition' => :'String',
        :'part_of_speech' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'definition']
        self.definition = attributes[:'definition']
      end
      
      if attributes[:'partOfSpeech']
        self.part_of_speech = attributes[:'partOfSpeech']
      end
      
    end

  end
end
