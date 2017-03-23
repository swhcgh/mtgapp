class Contender < ApplicationRecord
  
  after_initialize :init
  
  def init
    self.points = 0 if self.points.nil?
  end
end
