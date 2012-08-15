class CreateClocks < ActiveRecord::Migration
  def change
    create_table :clocks do |t|
      t.string :country
      t.decimal :time
      t.decimal :timezone

      t.timestamps
    end
  end
end
