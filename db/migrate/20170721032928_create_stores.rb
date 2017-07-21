class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :location
      t.string :contact_info
      t.string :rating

      t.timestamps
    end
  end
end
