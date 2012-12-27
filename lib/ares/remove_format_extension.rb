require 'active_support/concern'

module ActiveResource
  module Extend
    module RemoveExtension
      extend ActiveSupport::Concern
 
      included do
        class << self
          alias_method_chain :element_path, :extension
          alias_method_chain :new_element_path, :extension
          alias_method_chain :collection_path, :extension
        end
      end
 
      module ClassMethods
        def custom_method_collection_url(*args)
          super.gsub(/.json|.xml/,'')
        end

        def element_path_with_extension(*args)
          element_path_without_extension(*args).gsub(/.json|.xml/,'')
        end

        def new_element_path_with_extension(*args)
          new_element_path_without_extension(*args).gsub(/.json|.xml/,'')
        end

        def collection_path_with_extension(*args)
          collection_path_without_extension(*args).gsub(/.json|.xml/,'')
        end
      end
 
      private
      def custom_method_element_url(*args)
        super.gsub(/.json|.xml/,'')
      end      
  
      def custom_method_new_element_url(*args)
        super.gsub(/.json|.xml/,'')
      end
    end
  end
end