class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :Card_Name
      t.string :Color
      t.string :Cost
      t.string :Type
      t.string :Subtype_1
      t.string :Subtype_2
      t.string :Subtype_3
      t.string :Rarity
      t.string :P
      t.string :T
      t.integer :Loyal
      t.text :Rules_Text
      t.integer :CMC

      t.timestamps
    end
  end
end
