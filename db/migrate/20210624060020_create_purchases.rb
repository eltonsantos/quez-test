class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :description
      t.integer :status, default: 0
      t.string :updated_by
      t.text :notes
      t.references :user, null: true

      t.timestamps
    end
  end
end
