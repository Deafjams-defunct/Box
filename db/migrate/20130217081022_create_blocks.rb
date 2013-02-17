class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.float :red
      t.float :green
      t.string :blue
      t.string :float

      t.timestamps
    end
  end
end
