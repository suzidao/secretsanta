class CreateSantas < ActiveRecord::Migration
  def change
    create_table :santas do |t|
      t.string :name
      t.string :email
      t.string :fact1
      t.string :fact2
      t.string :fact3
      t.string :fact4
      t.string :fact5

      t.timestamps
    end
  end
end
