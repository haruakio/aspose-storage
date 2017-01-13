module AsposeStorageCloud
  # 
  class FileExist < BaseObject
    attr_accessor :is_exist, :is_folder
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'is_exist' => :'IsExist',
        
        # 
        :'is_folder' => :'IsFolder'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'is_exist' => :'BOOLEAN',
        :'is_folder' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
      
      if attributes[:'IsExist']
        self.is_exist = attributes[:'IsExist']
      end
      
      if attributes[:'IsFolder']
        self.is_folder = attributes[:'IsFolder']
      end
      
    end

  end
end
