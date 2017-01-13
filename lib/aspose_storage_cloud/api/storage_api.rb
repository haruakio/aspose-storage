require "uri"

module AsposeStorageCloud
  class StorageApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Check the disk usage of the current account. Parameters: storage - user&#39;s storage name.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @return [DiscUsageResponse]
    def get_disc_usage(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#get_disc_usage ..."
      end
      
      # resource path
      path = "/storage/disc".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DiscUsageResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#get_disc_usage. Result: #{result.inspect}"
      end
      return result
    end

    # Check if a specific file or folder exists. Parameters: path - file or folder path e.g. /file.ext or /Folder1, versionID - file&#39;s version, storage - user&#39;s storage name.
    # 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id 
    # @option opts [String] :storage 
    # @return [FileExistResponse]
    def get_is_exist(path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#get_is_exist ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling get_is_exist" if path.nil?
      
      # resource path
      path = "/storage/exist/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'versionId'] = opts[:'version_id'] if opts[:'version_id']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FileExistResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#get_is_exist. Result: #{result.inspect}"
      end
      return result
    end

    # Download a specific file. Parameters: path - file path e.g. /file.ext, versionID - file&#39;s version, storage - user&#39;s storage name.
    #
    # @param path
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id
    # @option opts [String] :storage
    # @return [File]
    def get_download(path, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: StorageApi#get_download ..."
        end
        
        # verify the required parameter 'path' is set
        fail "Missing the required parameter 'path' when calling get_download" if path.nil?
        
        # resource path
        path = "/storage/file/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'versionId'] = opts[:'version_id'] if opts[:'version_id']
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['multipart/form-data']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = []
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:GET, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'File')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: StorageApi#get_download. Result: #{result.inspect}"
                                      end
                                      return result
    end

    # Upload a specific file. Parameters: path - source file path e.g. /file.ext, versionID - source file&#39;s version, storage - user&#39;s source storage name, newdest - destination file path, destStorage - user&#39;s destination storage name.
    # 
    # @param path 
    # @param file file to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id 
    # @option opts [String] :storage 
    # @return [BaseResponse]
    def put_create(path, file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#put_create ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling put_create" if path.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling put_create" if file.nil?
      
      # resource path
      path = "/storage/file/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'versionId'] = opts[:'version_id'] if opts[:'version_id']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      
      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#put_create. Result: #{result.inspect}"
      end
      return result
    end

    # Create the folder. Parameters: path - source folder path e.g. /Folder1, storage - user&#39;s source storage name, newdest - destination folder path e.g. /Folder2, destStorage - user&#39;s destination storage name.
    # 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :dest_storage 
    # @return [BaseResponse]
    def put_create_folder(path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#put_create_folder ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling put_create_folder" if path.nil?
      
      # resource path
      path = "/storage/folder/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'destStorage'] = opts[:'dest_storage'] if opts[:'dest_storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#put_create_folder. Result: #{result.inspect}"
      end
      return result
    end

    # Copy a specific file. Parameters: path - source file path e.g. /file.ext, versionID - source file&#39;s version, storage - user&#39;s source storage name, newdest - destination file path, destStorage - user&#39;s destination storage name.
    # 
    # @param path 
    # @param newdest 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id 
    # @option opts [String] :storage 
    # @option opts [String] :dest_storage 
    # @option opts [File] :file 
    # @return [BaseResponse]
    def put_copy(path, newdest, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#put_copy ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling put_copy" if path.nil?
      
      # verify the required parameter 'newdest' is set
      fail "Missing the required parameter 'newdest' when calling put_copy" if newdest.nil?
      
      # resource path
      path = "/storage/file/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'newdest'] = newdest
      query_params[:'versionId'] = opts[:'version_id'] if opts[:'version_id']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'destStorage'] = opts[:'dest_storage'] if opts[:'dest_storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = opts[:'file'] if opts[:'file']

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#put_copy. Result: #{result.inspect}"
      end
      return result
    end

    # Remove a specific file. Parameters: path - file path e.g. /file.ext, versionID - file&#39;s version, storage - user&#39;s storage name.
    # 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id 
    # @option opts [String] :storage 
    # @return [BaseResponse]
    def delete_file(path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#delete_file ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling delete_file" if path.nil?
      
      # resource path
      path = "/storage/file/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'versionId'] = opts[:'version_id'] if opts[:'version_id']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#delete_file. Result: #{result.inspect}"
      end
      return result
    end

    # Move a specific file.
    # 
    # @param src source file path e.g. /file.ext
    # @param dest 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id source file&#39;s version,
    # @option opts [String] :storage user&#39;s source storage name
    # @option opts [String] :dest_storage user&#39;s destination storage name
    # @return [BaseResponse]
    def post_move_file(src, dest, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#post_move_file ..."
      end
      
      # verify the required parameter 'src' is set
      fail "Missing the required parameter 'src' when calling post_move_file" if src.nil?
      
      # verify the required parameter 'dest' is set
      fail "Missing the required parameter 'dest' when calling post_move_file" if dest.nil?
      
      # resource path
      path = "/storage/file/{src}".sub('{format}','json').sub('{' + 'src' + '}', src.to_s)

      # query parameters
      query_params = {}
      query_params[:'dest'] = dest
      query_params[:'versionId'] = opts[:'version_id'] if opts[:'version_id']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'destStorage'] = opts[:'dest_storage'] if opts[:'dest_storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#post_move_file. Result: #{result.inspect}"
      end
      return result
    end

    # Get the file listing of a specific folder. Parametres: path - start with name of storage e.g. root folder &#39;/&#39;or some folder &#39;/folder1/..&#39;, storage - user&#39;s storage name.
    # 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @return [FolderResponse]
    def get_list_files(path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#get_list_files ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling get_list_files" if path.nil?
      
      # resource path
      path = "/storage/folder/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FolderResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#get_list_files. Result: #{result.inspect}"
      end
      return result
    end

    # Copy a folder. Parameters: path - source folder path e.g. /Folder1, storage - user&#39;s source storage name, newdest - destination folder path e.g. /Folder2, destStorage - user&#39;s destination storage name.
    # 
    # @param path 
    # @param newdest 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :dest_storage 
    # @return [BaseResponse]
    def put_copy_folder(path, newdest, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#put_copy_folder ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling put_copy_folder" if path.nil?
      
      # verify the required parameter 'newdest' is set
      fail "Missing the required parameter 'newdest' when calling put_copy_folder" if newdest.nil?
      
      # resource path
      path = "/storage/folder/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'newdest'] = newdest
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'destStorage'] = opts[:'dest_storage'] if opts[:'dest_storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#put_copy_folder. Result: #{result.inspect}"
      end
      return result
    end

    # Remove a specific folder. Parameters: path - folder path e.g. /Folder1, storage - user&#39;s storage name, recursive - is subfolders and files must be deleted for specified path.
    # 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [BOOLEAN] :recursive 
    # @return [BaseResponse]
    def delete_folder(path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#delete_folder ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling delete_folder" if path.nil?
      
      # resource path
      path = "/storage/folder/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'recursive'] = opts[:'recursive'] if opts[:'recursive']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#delete_folder. Result: #{result.inspect}"
      end
      return result
    end

    # Move a specific folder. Parameters: src - source folder path e.g. /Folder1, storage - user&#39;s source storage name, dest - destination folder path e.g. /Folder2, destStorage - user&#39;s destination storage name.
    # 
    # @param src 
    # @param dest 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :dest_storage 
    # @return [BaseResponse]
    def post_move_folder(src, dest, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#post_move_folder ..."
      end
      
      # verify the required parameter 'src' is set
      fail "Missing the required parameter 'src' when calling post_move_folder" if src.nil?
      
      # verify the required parameter 'dest' is set
      fail "Missing the required parameter 'dest' when calling post_move_folder" if dest.nil?
      
      # resource path
      path = "/storage/folder/{src}".sub('{format}','json').sub('{' + 'src' + '}', src.to_s)

      # query parameters
      query_params = {}
      query_params[:'dest'] = dest
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'destStorage'] = opts[:'dest_storage'] if opts[:'dest_storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#post_move_folder. Result: #{result.inspect}"
      end
      return result
    end

    # Get the file&#39;s versions list. Parameters: path - file path e.g. /file.ext or /Folder1/file.ext, storage - user&#39;s storage name.
    # 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @return [FileVersionsResponse]
    def get_list_file_versions(path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#get_list_file_versions ..."
      end
      
      # verify the required parameter 'path' is set
      fail "Missing the required parameter 'path' when calling get_list_file_versions" if path.nil?
      
      # resource path
      path = "/storage/version/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FileVersionsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#get_list_file_versions. Result: #{result.inspect}"
      end
      return result
    end

    # Check if a specific storage exists.
    # 
    # @param name Storage name
    # @param [Hash] opts the optional parameters
    # @return [StorageExistResponse]
    def get_is_storage_exist(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: StorageApi#get_is_storage_exist ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_is_storage_exist" if name.nil?
      
      # resource path
      path = "/storage/{name}/exist".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StorageExistResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: StorageApi#get_is_storage_exist. Result: #{result.inspect}"
      end
      return result
    end
  end
end




