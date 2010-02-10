class AddColumnSelectId < ActiveRecord::Migration
  def self.up
   add_column :events, :select_id, :integer 
  end

  def self.down
    remove_column :events, :select_id
  end
end
