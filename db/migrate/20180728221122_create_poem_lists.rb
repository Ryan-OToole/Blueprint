class CreatePoemLists < ActiveRecord::Migration[5.2]
  def change
    create_table :poem_lists do |t|
      t.integer :user_id
      t.integer :poem_id

      t.timestamps
    end
  end
end
