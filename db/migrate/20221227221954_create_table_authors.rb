class CreateTableAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|

      t.timestamps
    end
  end
end
