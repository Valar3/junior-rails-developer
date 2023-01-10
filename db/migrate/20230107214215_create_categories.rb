class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps

   add_column :posts, :category_id, :int
    end
  end
  end
end
