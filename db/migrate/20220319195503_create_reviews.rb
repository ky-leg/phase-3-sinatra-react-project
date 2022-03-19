class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :rating
      t.integer :customer_id
      t.integer :article_id
    end
  end
end
