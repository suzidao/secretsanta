class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.datetime :date
      t.integer :limit
      t.string :host
      t.string :hostEmail

      t.timestamps
    end
  end
end
