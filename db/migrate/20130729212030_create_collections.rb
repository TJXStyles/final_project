class CreateCollections < ActiveRecord::Migration
  def change
    add_column :collection, :name, :string
    end
  end

