class CreateFileRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :file_records do |t|
      t.string :title
      t.text :description
      t.references :user

      t.timestamps
    end
  end
end
