module WordsAPI
  # 
  class Result < BaseObject
    attr_accessor :definition, :derivation, :part_of_speech, :synonyms, :type_of
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'definition' => :'definition',
        
        # 
        :'derivation' => :'derivation',
        
        # 
        :'part_of_speech' => :'partOfSpeech',
        
        # 
        :'synonyms' => :'synonyms',
        
        # 
        :'type_of' => :'typeOf'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'definition' => :'String',
        :'derivation' => :'Array<String>',
        :'part_of_speech' => :'String',
        :'synonyms' => :'Array<String>',
        :'type_of' => :'Array<String>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'definition']
        self.definition = attributes[:'definition']
      end
      
      if attributes[:'derivation']
        if (value = attributes[:'derivation']).is_a?(Array)
          self.derivation = value
        end
      end
      
      if attributes[:'partOfSpeech']
        self.part_of_speech = attributes[:'partOfSpeech']
      end
      
      if attributes[:'synonyms']
        if (value = attributes[:'synonyms']).is_a?(Array)
          self.synonyms = value
        end
      end
      
      if attributes[:'typeOf']
        if (value = attributes[:'typeOf']).is_a?(Array)
          self.type_of = value
        end
      end
      
    end

  end
end
