class AddTeamIdToPerson < ActiveRecord::Migration
  def change
    add_column :people, :team_id, :integer
  end
end
