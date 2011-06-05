module NavigationHelpers
  module Refinery
    module Articles
      def path_to(page_name)
        case page_name
        when /the list of articles/
          admin_articles_path

         when /the new article form/
          new_admin_article_path
        else
          nil
        end
      end
    end
  end
end
