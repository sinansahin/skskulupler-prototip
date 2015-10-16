class ChangeSupervisorType < ActiveRecord::Migration
  def change
  		change_column :clubs, :supervisor,:string
  end
end
