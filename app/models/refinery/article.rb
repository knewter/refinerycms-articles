module Refinery
  class Article < ActiveRecord::Base
  
    acts_as_indexed :fields => [:title, :contents]

    validates :title, :presence => true, :uniqueness => true
      
    belongs_to :photo, :class_name => '::Refinery::Image'    
  end
end
