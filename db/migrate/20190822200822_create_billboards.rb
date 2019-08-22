class CreateBillboards < ActiveRecord::Migration[6.0]
  def change
    create_table :billboards do |t|
      t.string :billboard_name

      t.timestamps
    end
  end
end
