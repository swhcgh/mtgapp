class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.integer :contender_id
      t.text :Cardlist

      t.timestamps
    end
  end
end
