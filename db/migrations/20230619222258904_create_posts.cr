class CreatePosts < Jennifer::Migration::Base
  def up
    create_table :posts do |t|
      t.string :title, {:null => false}
      t.text :text

      t.timestamps
    end
  end

  def down
    drop_table :posts if table_exists? :posts
  end
end
