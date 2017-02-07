class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :capacity
      t.string :street_name
      t.string :neighbourhood
      t.string :postal_code
      t.string :city
      t.string :province
      t.string :country
      t.string :cuisine_type
      t.integer :phone_number
      t.string :email
      t.string :price
      t.text :summary
      t.string :menu
      t.integer :user_id

      t.timestamps
    end
  end
end
