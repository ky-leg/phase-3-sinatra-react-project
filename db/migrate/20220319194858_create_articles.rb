class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t| 
      t.string :type
      t.string :material
      t.string :color
      t.string :size
      t.integer :customer_id
      t.integer :brand_id
    end
  end
end
