module ::Refinery
  module Admin
    class ArticlesController < ::Admin::BaseController

      crudify :'refinery/article', :xhr_paging => true

    end
  end
end
