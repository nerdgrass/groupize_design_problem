class Snack < ActiveRecord::Base
  attr_accessible :calories, :description, :last_restock_date, :name, :restock_frequency_days

  def remaining_days
    last_restock_date + restock_frequency_days.days
  end
end
