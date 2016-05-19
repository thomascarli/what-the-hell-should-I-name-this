module WordsAPI
  # 
  class DetailsResponse < BaseObject
    attr_accessor :also, :antonyms, :definitions, :entails, :has_categories, :has_instances, :has_members, :has_parts, :has_substances, :has_types, :has_usages, :in_category, :in_region, :instance_of, :member_of, :part_of, :pertains_to, :region_of, :similar_to, :substance_of, :synonyms, :type_of, :usage_of
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'also' => :'also',
        
        # 
        :'antonyms' => :'antonyms',
        
        # 
        :'definitions' => :'definitions',
        
        # 
        :'entails' => :'entails',
        
        # 
        :'has_categories' => :'hasCategories',
        
        # 
        :'has_instances' => :'hasInstances',
        
        # 
        :'has_members' => :'hasMembers',
        
        # 
        :'has_parts' => :'hasParts',
        
        # 
        :'has_substances' => :'hasSubstances',
        
        # 
        :'has_types' => :'hasTypes',
        
        # 
        :'has_usages' => :'hasUsages',
        
        # 
        :'in_category' => :'inCategory',
        
        # 
        :'in_region' => :'inRegion',
        
        # 
        :'instance_of' => :'instanceOf',
        
        # 
        :'member_of' => :'memberOf',
        
        # 
        :'part_of' => :'partOf',
        
        # 
        :'pertains_to' => :'pertainsTo',
        
        # 
        :'region_of' => :'regionOf',
        
        # 
        :'similar_to' => :'similarTo',
        
        # 
        :'substance_of' => :'substanceOf',
        
        # 
        :'synonyms' => :'synonyms',
        
        # 
        :'type_of' => :'typeOf',
        
        # 
        :'usage_of' => :'usageOf'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'also' => :'Array<String>',
        :'antonyms' => :'Array<String>',
        :'definitions' => :'Array<Definition>',
        :'entails' => :'Array<String>',
        :'has_categories' => :'Array<String>',
        :'has_instances' => :'Array<String>',
        :'has_members' => :'Array<String>',
        :'has_parts' => :'Array<String>',
        :'has_substances' => :'Array<String>',
        :'has_types' => :'Array<String>',
        :'has_usages' => :'Array<String>',
        :'in_category' => :'Array<String>',
        :'in_region' => :'Array<String>',
        :'instance_of' => :'Array<String>',
        :'member_of' => :'Array<String>',
        :'part_of' => :'Array<String>',
        :'pertains_to' => :'Array<String>',
        :'region_of' => :'Array<String>',
        :'similar_to' => :'Array<String>',
        :'substance_of' => :'Array<String>',
        :'synonyms' => :'Array<String>',
        :'type_of' => :'Array<String>',
        :'usage_of' => :'Array<String>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'also']
        if (value = attributes[:'also']).is_a?(Array)
          self.also = value
        end
      end
      
      if attributes[:'antonyms']
        if (value = attributes[:'antonyms']).is_a?(Array)
          self.antonyms = value
        end
      end
      
      if attributes[:'definitions']
        if (value = attributes[:'definitions']).is_a?(Array)
          self.definitions = value
        end
      end
      
      if attributes[:'entails']
        if (value = attributes[:'entails']).is_a?(Array)
          self.entails = value
        end
      end
      
      if attributes[:'hasCategories']
        if (value = attributes[:'hasCategories']).is_a?(Array)
          self.has_categories = value
        end
      end
      
      if attributes[:'hasInstances']
        if (value = attributes[:'hasInstances']).is_a?(Array)
          self.has_instances = value
        end
      end
      
      if attributes[:'hasMembers']
        if (value = attributes[:'hasMembers']).is_a?(Array)
          self.has_members = value
        end
      end
      
      if attributes[:'hasParts']
        if (value = attributes[:'hasParts']).is_a?(Array)
          self.has_parts = value
        end
      end
      
      if attributes[:'hasSubstances']
        if (value = attributes[:'hasSubstances']).is_a?(Array)
          self.has_substances = value
        end
      end
      
      if attributes[:'hasTypes']
        if (value = attributes[:'hasTypes']).is_a?(Array)
          self.has_types = value
        end
      end
      
      if attributes[:'hasUsages']
        if (value = attributes[:'hasUsages']).is_a?(Array)
          self.has_usages = value
        end
      end
      
      if attributes[:'inCategory']
        if (value = attributes[:'inCategory']).is_a?(Array)
          self.in_category = value
        end
      end
      
      if attributes[:'inRegion']
        if (value = attributes[:'inRegion']).is_a?(Array)
          self.in_region = value
        end
      end
      
      if attributes[:'instanceOf']
        if (value = attributes[:'instanceOf']).is_a?(Array)
          self.instance_of = value
        end
      end
      
      if attributes[:'memberOf']
        if (value = attributes[:'memberOf']).is_a?(Array)
          self.member_of = value
        end
      end
      
      if attributes[:'partOf']
        if (value = attributes[:'partOf']).is_a?(Array)
          self.part_of = value
        end
      end
      
      if attributes[:'pertainsTo']
        if (value = attributes[:'pertainsTo']).is_a?(Array)
          self.pertains_to = value
        end
      end
      
      if attributes[:'regionOf']
        if (value = attributes[:'regionOf']).is_a?(Array)
          self.region_of = value
        end
      end
      
      if attributes[:'similarTo']
        if (value = attributes[:'similarTo']).is_a?(Array)
          self.similar_to = value
        end
      end
      
      if attributes[:'substanceOf']
        if (value = attributes[:'substanceOf']).is_a?(Array)
          self.substance_of = value
        end
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
      
      if attributes[:'usageOf']
        if (value = attributes[:'usageOf']).is_a?(Array)
          self.usage_of = value
        end
      end
      
    end

  end
end
