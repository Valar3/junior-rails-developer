class AddAuthorIdToPostsV2 < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :auhtor_id, :int
  end
end
