class CreateVanities < ActiveRecord::Migration
  def self.up
    # Create the vanities table
    create_table :vanities do |t|
      t.string      :name
      t.integer     :vain_id
      t.string      :vain_type
    end
    
    # Add some indexes
    add_index :vanities, :name, :unique => true
    add_index :vanities, :vain_id
    add_index :vanities, :vain_type
    
  end

  def self.down
    drop_table :vanities
  end
end
