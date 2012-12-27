require 'active_resource'
require 'yaml'
require 'ares/remove_format_extension'
require 'ares/add_api_key'
require 'ares/use_config_file'

ActiveResource::Base.send(:include, ActiveResource::Extend::RemoveExtension)
ActiveResource::Base.send(:include, ActiveResource::Extend::AuthWithApiKey)
ActiveResource::Base.establish_site_connection