module AsposeStorageCloud
  # 
  class DiscUsage < BaseObject
    attr_accessor :used_size, :total_size
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'used_size' => :'UsedSize',
        
        # 
        :'total_size' => :'TotalSize'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'used_size' => :'Integer',
        :'total_size' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'UsedSize']
        self.used_size = attributes[:'UsedSize']
      end
      
      if attributes[:'TotalSize']
        self.total_size = attributes[:'TotalSize']
      end
      
    end

  end
end
