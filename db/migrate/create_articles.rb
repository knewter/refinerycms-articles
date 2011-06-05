class CreateArticles < ActiveRecord::Migration

  def self.up
    create_table :refinery_articles do |t|
      t.string :title
      t.datetime :date
      t.integer :photo_id
      t.text :contents
      t.integer :position

      t.timestamps
    end

    add_index :refinery_articles, :id

    load(Rails.root.join('db', 'seeds', 'articles.rb'))
  end

  def self.down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "articles"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/articles"})
    end

    drop_table :refinery_articles
  end

end
