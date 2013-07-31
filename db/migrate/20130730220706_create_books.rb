class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :issue
      t.text :description
      t.references :collection

      t.timestamps
    end
  end
end
