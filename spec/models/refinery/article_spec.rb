require 'spec_helper'

describe ::Refinery::Article do

  def reset_article(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @article.destroy! if @article
    @article = Article.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_article
  end

  context "validations" do
    
    it "rejects empty title" do
      Article.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_article
      Article.new(@valid_attributes).should_not be_valid
    end
    
  end

end
