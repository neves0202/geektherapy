class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :questions
      t.text :description
      t.string :category
     

      t.timestamps
    end
  end
end
