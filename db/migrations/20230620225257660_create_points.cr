class CreatePoints < Jennifer::Migration::Base
  def up
    create_table :points do |t|
      # create array column
      t.integer :coordinates, { :array => true }

      t.timestamps
    end
  end

  def down
    drop_table :points if table_exists? :points
  end
end
