class CreateGnotes < ActiveRecord::Migration
  def self.up
    create_table :gnotes do |t|
      t.string :name
      t.string :mail
      t.string :site
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :gnotes
  end
end
