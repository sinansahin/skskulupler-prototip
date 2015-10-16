class AddColumToClub < ActiveRecord::Migration
  def change
  	add_column :clubs, :president, :string
  	add_column :clubs, :vice_president, :string
  	add_column :clubs, :treasurer, :string
  	add_column :clubs, :secretery, :string
  	add_column :clubs, :founder_member_1, :string
  	add_column :clubs, :founder_member_2, :string

  end
end
