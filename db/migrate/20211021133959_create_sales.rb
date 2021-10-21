class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :blend_name
      t.string :origin
      t.integer :amount
      t.datetime :date_time

      t.timestamps
    end
  end
end
