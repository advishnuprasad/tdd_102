class RemoveColumnTimeFromClocks < ActiveRecord::Migration
  def up
  	remove_column :clocks, :time
  end

  def down
  end
end
