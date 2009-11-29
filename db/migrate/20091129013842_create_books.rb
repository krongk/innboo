class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.references :user
      t.string :name
      t.string :category
      t.text :description
      t.boolean :is_open
      t.integer :sort_id

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
