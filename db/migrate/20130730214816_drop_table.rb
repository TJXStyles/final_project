class DropTable < ActiveRecord::Migration
  def up
  	drop_table :collection
  end
end
