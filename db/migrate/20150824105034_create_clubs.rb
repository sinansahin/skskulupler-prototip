class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :logo
      t.integer :supervisor
      t.text :regulation
      t.text :description
      t.string :email

      t.timestamps null: false
    end
  end
end
