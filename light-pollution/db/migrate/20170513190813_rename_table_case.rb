class RenameTableCase < ActiveRecord::Migration[5.0]
  def change
    rename_table :cases, :trials
  end
end
