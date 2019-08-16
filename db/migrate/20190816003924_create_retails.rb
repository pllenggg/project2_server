class CreateRetails < ActiveRecord::Migration[5.2]
  def change
    create_table :retails, :id => false do |t|
      t.integer :user_id
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :postcode
      t.string :phone
      t.string :email
      t.string :website
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
