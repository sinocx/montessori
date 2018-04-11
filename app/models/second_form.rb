class SecondForm < ApplicationRecord
  belongs_to :subscription
  belongs_to :more_info

  def price_canteen
    if self.canteen == 100
      "100 € / mois"
    elsif self.canteen == 1000
      "100 € / ans"
    elsif self.canteen == 7
      "7€ / jour"
    else
      "0€"
    end
  end

  def price_workshop
    if self.workshop == 1224
      "1124 € / semestre"
    elsif self.workshop == 2232
      "2232 € / ans"
    else
      "0€"
    end
  end

  def price_nursery
    if self.nusery == 100
      "100 € / semestre"
    elsif self.nusery == 1000
      "1000 € / ans"
    else
      "0€"
    end
  end
end
