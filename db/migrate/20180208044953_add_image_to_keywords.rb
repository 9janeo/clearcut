class AddImageToKeywords < ActiveRecord::Migration[5.1]
  def change
  	add_column :keywords, :image, :string
  end
end
