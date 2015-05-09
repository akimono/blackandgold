class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :stockstatus
      t.text :description
      t.string :image
      t.string :video
      t.string :producttype

      t.timestamps
    end
  end
end
