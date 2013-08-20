class AddViewsToArticles < ActiveRecord::Migration
  def change
  	add_column "articles", "views", :integer, :default => "1"
  end
end
