class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :comment
      t.belongs_to :user
      t.belongs_to :location
    end
  end
end
