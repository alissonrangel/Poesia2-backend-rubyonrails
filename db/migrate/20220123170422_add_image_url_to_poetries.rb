class AddImageUrlToPoetries < ActiveRecord::Migration[6.1]
  def change
    add_column :poetries, :image_url, :string
  end
end
