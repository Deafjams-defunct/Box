class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.float :red
      t.float :green
      t.float :blue

      t.timestamps
    end
  end
end
