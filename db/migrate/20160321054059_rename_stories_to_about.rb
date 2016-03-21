class RenameStoriesToAbout < ActiveRecord::Migration
  def change
    rename_column :founders, :stories, :about
  end
end
