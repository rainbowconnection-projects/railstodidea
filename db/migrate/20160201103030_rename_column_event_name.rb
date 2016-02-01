class RenameColumnEventName < ActiveRecord::Migration
  def change
    rename_column :events, :event_name, :name
  end
end
