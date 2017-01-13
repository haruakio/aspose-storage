module AsposeStorageCloud
  # 
  class FileResponse < BaseObject
    attr_accessor :name, :path, :modified_date, :is_folder, :size
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'Name',
        
        # 
        :'path' => :'Path',
        
        # 
        :'modified_date' => :'ModifiedDate',
        
        # 
        :'is_folder' => :'IsFolder',
        
        # 
        :'size' => :'Size'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'path' => :'String',
        :'modified_date' => :'String',
        :'is_folder' => :'BOOLEAN',
        :'size' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Path']
        self.path = attributes[:'Path']
      end
      
      if attributes[:'ModifiedDate']
        self.modified_date = attributes[:'ModifiedDate']
      end
      
      if attributes[:'IsFolder']
        self.is_folder = attributes[:'IsFolder']
      end
      
      if attributes[:'Size']
        self.size = attributes[:'Size']
      end
      
    end

  end
end
