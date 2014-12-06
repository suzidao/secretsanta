class CreatePartySanta < ActiveRecord::Migration
  def change
    create_table :party_santa do |t|
      t.integer :santa_id
      t.integer :party_id
      t.timestamps
    end
  end
end
