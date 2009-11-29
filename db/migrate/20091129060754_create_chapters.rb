class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table :chapters do |t|
      t.references :book
      t.string :title
      t.text :body
      t.boolean :is_continue
      t.integer :continue_chapter_id
      t.integer :sort_id

      t.timestamps
    end
  end

  def self.down
    drop_table :chapters
  end
end
