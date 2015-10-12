class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_join_table :users, :roles, id: false do |t|
      t.index :user_id
      t.index :role_id
    end
  end
end
