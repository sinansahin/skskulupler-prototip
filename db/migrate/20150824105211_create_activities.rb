class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :club_id
      t.string :title
      t.string :image
      t.text :description
      t.datetime :start_date
      t.datetime :finish_date
      t.string :address

      t.timestamps null: false
    end
  end
end
