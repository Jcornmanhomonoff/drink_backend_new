class AddUserToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_reference :drinks, :user, foreign_key: true
  end
end
