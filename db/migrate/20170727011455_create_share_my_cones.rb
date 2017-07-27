class CreateShareMyCones < ActiveRecord::Migration[5.1]
  def change
    create_table :share_my_cones do |t|
      t.string :images
      t.string :content
      t.string :nickname
      t.string :location

      t.timestamps
    end
  end
end
