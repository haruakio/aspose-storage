
# Common files
require_relative 'aspose_storage_cloud/api_client'
require_relative 'aspose_storage_cloud/api_error'
require_relative 'aspose_storage_cloud/aspose_app'
require_relative 'aspose_storage_cloud/version'
require_relative 'aspose_storage_cloud/configuration'

# Models
require_relative 'aspose_storage_cloud/models/base_object'
require_relative 'aspose_storage_cloud/models/storage_exist_response'
require_relative 'aspose_storage_cloud/models/folder_response'
require_relative 'aspose_storage_cloud/models/file_response'
require_relative 'aspose_storage_cloud/models/base_response'
require_relative 'aspose_storage_cloud/models/file_exist_response'
require_relative 'aspose_storage_cloud/models/file_exist'
require_relative 'aspose_storage_cloud/models/disc_usage_response'
require_relative 'aspose_storage_cloud/models/disc_usage'
require_relative 'aspose_storage_cloud/models/file_versions_response'
require_relative 'aspose_storage_cloud/models/file_version'

# APIs
require_relative 'aspose_storage_cloud/api/storage_api'

module AsposeStorageCloud
  class << self
    # Configure sdk using block.
    # AsposeStorageCloud.configure do |config|
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
