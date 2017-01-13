module AsposeStorageCloud
  # 
  class FileVersion < BaseObject
    attr_accessor :version_id, :is_latest, :name, :is_folder, :modified_date, :size, :path
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'version_id' => :'VersionId',
        
        # 
        :'is_latest' => :'IsLatest',
        
        # 
        :'name' => :'Name',
        
        # 
        :'is_folder' => :'IsFolder',
        
        # 
        :'modified_date' => :'ModifiedDate',
        
        # 
        :'size' => :'Size',
        
        # 
        :'path' => :'Path'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'version_id' => :'String',
        :'is_latest' => :'BOOLEAN',
        :'name' => :'String',
        :'is_folder' => :'BOOLEAN',
        :'modified_date' => :'String',
        :'size' => :'Integer',
        :'path' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'VersionId']
        self.version_id = attributes[:'VersionId']
      end
      
      if attributes[:'IsLatest']
        self.is_latest = attributes[:'IsLatest']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'IsFolder']
        self.is_folder = attributes[:'IsFolder']
      end
      
      if attributes[:'ModifiedDate']
        self.modified_date = attributes[:'ModifiedDate']
      end
      
      if attributes[:'Size']
        self.size = attributes[:'Size']
      end
      
      if attributes[:'Path']
        self.path = attributes[:'Path']
      end
      
    end

  end
end
