class AddLiToArticles < ActiveRecord::Migration
  def change
  	  	add_column "articles", "li", :integer
  end
end
