class AddRetailNameToRetails < ActiveRecord::Migration[5.2]
  def change
    add_column :retails, :retail_name, :string
  end
end
