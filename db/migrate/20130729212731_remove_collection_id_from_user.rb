class RemoveCollectionIdFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :collection_id
  end
end
