class ChangeTimezoneToClock < ActiveRecord::Migration
  def up
  	change_column :clocks, :timezone, :decimal , :precision => 2 , :scale => 2
  end

  def down
  end
end
