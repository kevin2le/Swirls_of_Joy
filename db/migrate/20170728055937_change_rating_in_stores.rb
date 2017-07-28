class ChangeRatingInStores < ActiveRecord::Migration[5.1]
  def change
    change_column :stores, :rating, :integer, using: 'rating::integer'
  end
end
