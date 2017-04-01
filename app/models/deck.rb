class Deck < ApplicationRecord
  serialize :Cardlist
  serialize :Cardcount
end
