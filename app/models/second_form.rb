class SecondForm < ApplicationRecord
  belongs_to :child_no_valid


  def price_school

  end

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

  def canteen_text
    if self.canteen == 0
      "Pas de cantine"
    elsif self.canteen == 1
      "Par repas"
    elsif self.canteen == 2
      "Au mois"
    elsif self.canteen == 3
      "À l'année"
    end
  end

  def nursery_text
    if self.nursery == 0
      "Sans garderie"
    elsif self.nursery == 1
      "Au mois"
    elsif self.nursery == 2
      "À l'année"
    end
  end

  def workshop_text
    if self.workshop == 0
      "Sans atelier"
    elsif self.workshop == 1
      "Au semestre"
    elsif self.workshop == 2
      "À l'année"
    end
  end
end
