require 'active_support/concern'

module ActiveResource
  module Extend
    module AuthWithApiKey
      extend ActiveSupport::Concern
 
      included do
        class << self
          alias_method_chain :headers, :auth
        end
      end
      
      module ClassMethods
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
        
        def headers_with_auth
          api_key.nil? ? headers_without_auth : headers_without_auth.merge({"Ft-Api-Key" => self.api_key})
        end
      end
    end
  end  
end