class AddTagsToFiles < ActiveRecord::Migration[6.0]
  def change
    add_column :file_records, :tags, :string
  end
end
