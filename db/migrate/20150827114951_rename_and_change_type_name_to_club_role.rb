class RenameAndChangeTypeNameToClubRole < ActiveRecord::Migration
def change
rename_column :club_roles, :name, :role_id
change_column :club_roles, :role_id, :integer

end
end
