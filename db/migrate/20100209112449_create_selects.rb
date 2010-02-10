class CreateSelects < ActiveRecord::Migration
  def self.up
    create_table :selects do |t|
      t.string :sort

      t.timestamps
    end
  end

  def self.down
    drop_table :selects
  end
end
