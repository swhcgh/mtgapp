class CreatePairings < ActiveRecord::Migration[5.0]
  def change
    create_table :pairings do |t|
      t.integer :Contender1
      t.integer :Contender2
      t.integer :tournament_id
      t.string :Result
      t.integer :RoundNumber

      t.timestamps
    end
  end
end
