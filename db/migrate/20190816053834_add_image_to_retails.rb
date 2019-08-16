class AddImageToRetails < ActiveRecord::Migration[5.2]
  def change
    add_column :retails, :retail_image, :string
  end
end
