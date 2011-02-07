module AutoComplete      
  
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  #
  # Example:
  #
  #   # Controller
  #   class BlogController < ApplicationController
  #     auto_complete_for :post, :title
  #   end
  #
  #   # View
  #   <%= text_field_with_auto_complete :post, title %>
  #
  # By default, auto_complete_for limits the results to 10 entries,
  # and sorts by the given field.
  # 
  # auto_complete_for takes a third parameter, an options hash to
  # the find method used to search for the records:
  #
  #   auto_complete_for :post, :title, :limit => 15, :order => 'created_at DESC'
  #
  # For help on defining text input fields with autocompletion, 
  # see ActionView::Helpers::JavaScriptHelper.
  #
  # For more examples, see script.aculo.us:
  # * http://script.aculo.us/demos/ajax/autocompleter
  # * http://script.aculo.us/demos/ajax/autocompleter_customized
  module ClassMethods
    
    def auto_complete_for(object, method, options = {})
      # the parameters object and method are Symbol to compare convert them into strings
      define_method("auto_complete_for_#{object}_#{method}") do       
        if object.to_s.eql?('product_entity') or object.to_s.eql?('stream')# streams and product_entities doesn't have the acronym column
          find_options = { 
          :conditions => [ "#{method} LIKE ?", '%' + params[object][method] + '%' ], 
          #:order => "#{method} ASC",
          :limit => 10,:group=>method.to_s }.merge!(options)
          #group=>method.to_s beacuase we have multiple same subjects in product entities group them and get uniq 10 subjects for others they are defualtly uniq
        else
          find_options = { 
          :conditions => [ "#{method} LIKE ? OR acronym LIKE ? ", '%' + params[object][method] + '%','%' + params[object][method].downcase + '%' ], 
          #:order => "#{method} ASC",
          :limit => 10}.merge!(options)                   
        end   
        #selecting respected columns only to improve the performace
        @items = object.to_s.camelize.constantize.find(:all, find_options) 
        render :inline => "<%= auto_complete_result @items, '#{method}','#{params[object][method]}' %>"
      end
    end
=begin auto complete using with simple column search plugin
    def auto_complete_for(object, method, options = {})
      define_method("auto_complete_for_#{object}_#{method}") do              
        @items = object.to_s.camelize.constantize.search(params[object][method].downcase)
        render :inline => "<%= auto_complete_result @items, '#{method}','#{params[object][method]}' %>"
      end
    end
=end
  end
  
end