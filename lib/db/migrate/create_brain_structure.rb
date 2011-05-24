class CreateBrainStructure < ActiveRecord::Migration
  def self.up
    create_table :thoughts do |t|
      t.string :name
      t.string :guid

      t.timestamps
    end
    change_column :thoughts, :id, :string
    
    create_table :links do |t|
      t.string :idA
      t.string :idB
      t.integer :dir

      t.timestamps
    end
    change_column :links, :id, :string
    
    create_table :linkings do |t|
      t.string :link_id
      t.string :thought_id
    end
  end

  def self.down
    drop_table :thoughts
    drop_table :links
    drop_table :linkings
  end
end
