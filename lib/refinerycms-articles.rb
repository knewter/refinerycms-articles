require 'refinerycms-base'

module Refinery
  module Articles
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "articles"
          plugin.url = '/refinery/articles'
          plugin.activity = {
            :class => ::Refinery::Article
          }
        end
      end
    end
  end
end
