class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers, :id => false do |t|
      t.integer :user_id
      t.string :full_name
      t.string :profile_image
      t.string :phone

      t.timestamps
    end
  end
end
