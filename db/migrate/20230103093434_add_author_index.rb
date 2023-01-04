class AddAuthorIndex < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :Author_email, :string
  end
end
