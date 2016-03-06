class AddTitleToArticles < ActiveRecord::Migration
  def change
    if !(Article.columns_hash.has_key?('title'))
      add_column :articles, :title, :string
    end
  end
end
