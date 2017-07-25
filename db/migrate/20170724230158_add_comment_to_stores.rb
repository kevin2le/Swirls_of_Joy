class AddCommentToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :comment, :string
  end
end
