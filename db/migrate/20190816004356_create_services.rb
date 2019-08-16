class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :category_id
      t.string :title
      t.text :description
      t.string :service_image
      t.integer :price
      t.integer :duration
      t.boolean :ispopular
      t.integer :retail_id
      t.timestamps
    end
  end
end
