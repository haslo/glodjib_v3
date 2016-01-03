class CreateImageSizes < ActiveRecord::Migration[5.0]
  def change

    create_table :image_sizes do |t|
      t.references :image, index: true
      t.integer :longer_side
      t.string :file
      t.string :type
      t.timestamps null: false
    end

    add_column :images, :description, :string

  end
end
