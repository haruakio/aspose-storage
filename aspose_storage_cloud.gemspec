# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "aspose_storage_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_storage_cloud"
  s.version     = AsposeStorageCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["M. Sohail Ismail"]
  s.email       = ["muhammad.sohail@aspose.com"]
  s.homepage    = "http://www.aspose.com/cloud/total-api.aspx"
  s.summary     = %q{A powerful API for web apps that work with files.}
  s.description = %q{This SDK allows you to perform storage operations like download a specific file, upload a specific file, remove a specific file, move a specific file, get the file listing of a specific folder etc. on Aspose Cloud Storage.}
  s.license     = "MIT"

  s.add_runtime_dependency 'typhoeus', '~> 0.8'
  s.add_runtime_dependency 'json', '~> 1.7'

  s.add_development_dependency 'minitest', '~> 5.8'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
