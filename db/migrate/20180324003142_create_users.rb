class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :family_name
      t.string :given_name
      t.string :nick_name
      t.integer :area_id
      t.string :image

      t.timestamps
    end
  end
end
