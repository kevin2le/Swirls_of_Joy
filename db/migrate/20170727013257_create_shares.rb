class CreateShares < ActiveRecord::Migration[5.1]
  def change
    create_table :shares do |t|
      t.attachment :image
      t.string :content
      t.string :nickname
      t.string :location

      t.timestamps
    end
  end
end
