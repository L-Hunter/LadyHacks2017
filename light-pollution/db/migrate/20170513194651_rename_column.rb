class RenameColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :trials, :type, :classification
  end
end
