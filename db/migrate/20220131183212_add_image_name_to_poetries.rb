class AddImageNameToPoetries < ActiveRecord::Migration[6.1]
  def change
    add_column :poetries, :image_name, :string
  end
end
