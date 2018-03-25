class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.text :description
      t.text :image
      t.integer :user_id
      t.integer :category

      t.timestamps
    end
  end
end
