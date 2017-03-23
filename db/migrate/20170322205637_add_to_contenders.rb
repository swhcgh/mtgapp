class AddToContenders < ActiveRecord::Migration[5.0]
  def change
    add_column :contenders, :wins, :integer
    add_column :contenders, :losses, :integer
    add_column :contenders, :points, :integer
  end
end
