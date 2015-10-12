class CreateClubRoles < ActiveRecord::Migration
  def change
    create_table :club_roles, id: false do |t|
      t.integer :user_id
      t.integer :club_id
      t.string :name

      t.timestamps null: false
    end
  end
end
