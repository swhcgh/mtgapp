class CreateContenders < ActiveRecord::Migration[5.0]
  def change
    create_table :contenders do |t|
      t.integer :user_id
      t.integer :tournament_id
      t.integer :deck_id

      t.timestamps
    end
  end
end
