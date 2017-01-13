# Aspose.Storage Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud Storage APIs](http://api.aspose.com/v1.1/swagger/ui/index) in your web apps.

<p align="center">
  <a title="Download complete Aspose.Storage for Cloud source code" href="https://github.com/asposetotal/Aspose_total_Cloud/archive/master.zip">
	<img src="https://raw.github.com/AsposeExamples/java-examples-dashboard/master/images/downloadZip-Button-Large.png" />
  </a>
</p>

##How to Use the SDK?
The complete source code is available in this repository folder, you can either directly use it in your project or use RubyGems. For more details, please visit our [documentation website](http://www.aspose.com/docs/display/totalcloud/Available+SDKs).

## Usage
APIs of this SDK can be called as follows:

```ruby
require 'aspose_storage_cloud'

class Storage

  include AsposeStorageCloud
  
  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @storage_api = StorageApi.new  
  end
  
  def get_aspose_disc_usage
    #Check the disk usage of the current account.
    disc_usage_response = @storage_api.get_disc_usage()
    puts "Used Size: #{disc_usage_response.disc_usage.used_size} Total Size: #{disc_usage_response.disc_usage.total_size}"
  end
  
end
```
## Unit Tests
Aspose Storage SDK includes a suite of unit tests within the [test](https://github.com/asposetotal/Aspose_Total_Cloud/blob/master/SDKs/Aspose.Storage_Cloud_SDK_For_Ruby/test/storage_tests.rb) subdirectory. These Unit Tests also serves as examples of how to use the Aspose Storage SDK.

##Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://www.aspose.com/community/forums/).
