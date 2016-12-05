class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.integer :total_cents

      t.timestamps
    end
  end
end
