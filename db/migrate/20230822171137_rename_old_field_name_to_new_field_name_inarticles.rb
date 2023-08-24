class RenameOldFieldNameToNewFieldNameInarticles < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :Title, :title
    rename_column :articles, :Description, :description
  end
end
