class AddPointsToArticles < ActiveRecord::Migration
  def change
  	add_column "articles", "points", :integer, :default => "100"
  end
end
