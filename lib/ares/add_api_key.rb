module ActiveResource
  module Extend
    module AuthWithApiKey
      module ClassMethods
        def element_path_with_auth(*args)
          element_path_without_auth(*args).concat("?Ft-Api-Key=#{self.api_key}")
        end
        
        def new_element_path_with_auth(*args)
          new_element_path_without_auth(*args).concat("?Ft-Api-Key=#{self.api_key}")
        end
        
        def collection_path_with_auth(*args)
          collection_path_without_auth(*args).concat("?Ft-Api-Key=#{self.api_key}")
        end
        
        def custom_method_collection_url_with_auth(*args)
          custom_method_collection_url_without_auth(*args).concat("?Ft-Api-Key=#{self.api_key}")
        end        
        
        def api_key
          # Not using superclass_delegating_reader. See +site+ for explanation
          if defined?(@api_key)
            @api_key
          elsif superclass != Object && superclass.api_key
            superclass.api_key.dup.freeze
          end
        end

        def api_key=(api_key)
          @api_key = api_key
        end        
      end

      def self.included(base)
        base.class_eval do
          extend ClassMethods
          class << self
            alias_method_chain :element_path, :auth
            alias_method_chain :new_element_path, :auth
            alias_method_chain :collection_path, :auth
            alias_method_chain :custom_method_collection_url, :auth            
            #attr_accessor :api_key
          end
        end
      end  
    end
  end  
end