class SecondForm < ApplicationRecord
  belongs_to :subscription
  belongs_to :more_info
  
  def price_canteen
    if self.canteen == 1
      "100 € / mois"
    elsif self.canteen == 2
      "100 € / ans"
    elsif self.canteen == 3
      "7€ / jour"
    else
      "0€"
    end
  end

  def price_workshop
    if self.workshop == 1
      "1124 € / semestre"
    elsif self.workshop == 2
      "2232 € / ans"
    else
      "0€"
    end
  end

  def price_nursery
    if self.nusery == 1
      "100 € / semestre"
    elsif self.nusery == 2
      "1000 € / ans"
    else
      "0€"
    end
  end
end
