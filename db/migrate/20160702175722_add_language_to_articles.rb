class AddLanguageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :language, :string
  end
end
