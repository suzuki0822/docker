class Administrator < ApplicationRecord
  include EmailHolder
  include PasswordHolder

  def active?
    !suspended && start_date <= Date.today &&
      (end_date.nil? || end_date > Date.today)
  end

end
