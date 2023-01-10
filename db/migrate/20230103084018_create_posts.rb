class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.datetime :published_at
      t.index_authors_on_email
    end
  end
end
