class AddCardcountToDeck < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :Cardcount, :text
  end
end
