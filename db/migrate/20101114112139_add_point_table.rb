class AddPointTable < ActiveRecord::Migration
  def self.up
    create_table :points do |t|
      t.column :shape_annotation_id, :int
      t.column :order, :int
      t.column :coord_x, :int
      t.column :coord_y, :int
    end
  end

  def self.down
    drop_table :points if table_exists?(:points)
  end
end