class AddAuthorIdV3 < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :Author_id, :int
  end
end
