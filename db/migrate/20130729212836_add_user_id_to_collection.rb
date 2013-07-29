class AddUserIdToCollection < ActiveRecord::Migration
  def change
  	add_column :collection, :user_id, :integer
  end
end
