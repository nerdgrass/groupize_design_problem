class Snack < ActiveRecord::Base
  attr_accessible :calories, :description, :last_restock_date, :name, :restock_frequency_days

  def remaining_days
    if restock_frequency_days
      rand(restock_frequency_days)
    else
      "N/A"
    end
  end
end
