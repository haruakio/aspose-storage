require "minitest/autorun"
require "minitest/unit"

require_relative '../lib/aspose_storage_cloud'

class StorageTests < Minitest::Test
	include MiniTest::Assertions
	include AsposeStorageCloud

	def setup
        #Get App key and App SID from https://cloud.aspose.com
        AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
		@storage_api = StorageApi.new
	end

	def teardown
	end

	def upload_file(file_name)
		response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
		assert(response, message="Failed to upload {file_name} file.")
	end

	def create_folder(folder_name)
		response = @storage_api.put_create_folder(folder_name)
		assert(response, message="Failed to create the folder.")
	end

	def test_get_disc_usage
	 	response = @storage_api.get_disc_usage()
	 	assert(response, message="Failed to check the disk usage of the current account.")
	end

        def test_get_is_exist
		file_name = "SampleWordDocument.docx"
		upload_file(file_name)
		response = @storage_api.get_is_exist(file_name)
	 	assert(response, message="Failed to check if a specific file or folder exists.")
	end	

	def test_get_download
		file_name = "SampleWordDocument.docx"
		upload_file(file_name)
		
	 	response = @storage_api.get_download(file_name)
	 	assert(response, message="Failed to download file.")
	end

	def test_put_create
		file_name = "SampleWordDocument.docx"
	 	response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
	 	assert(response, message="Failed to upload {file_name} file.")
	end

	def test_delete_file
		file_name = "SampleWordDocument.docx"
		response = @storage_api.delete_file(file_name)
	 	assert(response, message="Failed to delete {file_name} file.")
	end

	def test_post_move_file
		file_name = "SampleWordDocument.docx"
		upload_file(file_name)
		dest_folder = "documents"
		create_folder(dest_folder)

		response = @storage_api.post_move_file(file_name, dest_folder)
	 	assert(response, message="Failed to move a specific file.")
	end

	def test_get_list_files
		response = @storage_api.get_list_files("")
		assert(response, message="Failed to get the file listing of a specific folder.")
	end

	def test_put_create_folder
		folder_name = "newFolder"
		response = @storage_api.put_create_folder(folder_name)
		assert(response, message="Failed to create the folder.")
	end	

	def test_delete_folder
		folder_name = "pictures"
		create_folder(folder_name)

		response = @storage_api.delete_folder(folder_name)
		assert(response, message="Failed to delete {folder_name} folder.")
	end

	def test_post_move_folder
		src_folder = "moveFrom"
		dest_folder = "moveTo"
		create_folder(src_folder)
		create_folder(dest_folder)

		response = @storage_api.post_move_folder(src_folder, dest_folder)
		assert(response, message="Failed to move a specific folder.")
	end

	def test_get_list_file_versions 
		file_name = "buzz.png"
		upload_file(file_name)

		response = @storage_api.get_list_file_versions(file_name)
		assert(response, message="Failed to get the file's versions list.")
	end

	def test_get_is_storage_exist
		storage_name = "MyDropboxStorage"
		response = @storage_api.get_is_storage_exist(storage_name)
		assert(response, message="Failed to check if a specific storage exists.")
	end

	def test_put_copy
		file_name = "buzz.png"
		upload_file(file_name)
		newdest = "pictures"
		create_folder(newdest)

		response = @storage_api.put_copy(file_name, newdest)
		assert(response, message="Failed to copy a specific file.")
	end

	def test_put_copy_folder
		src_folder = "/copyFrom"
		create_folder(src_folder)
		dest_folder = "/copyTo"
		create_folder(dest_folder)

		response = @storage_api.put_copy_folder(src_folder, dest_folder)
		assert(response, message="Failed to copy a folder.")
	end

end
