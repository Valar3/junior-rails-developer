class Remove2Col < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :auhtor_id
    remove_column :posts, :Author_id
  end
end
