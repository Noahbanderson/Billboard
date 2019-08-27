class AddBelongsToBillboards < ActiveRecord::Migration[6.0]
  def change
    add_reference :billboards, :user, null: false, foreign_key: true
  end
end
