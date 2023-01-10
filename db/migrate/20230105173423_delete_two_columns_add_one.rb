class DeleteTwoColumnsAddOne < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :author_id, :int
  end
end
