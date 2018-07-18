class CreatePoemLists < ActiveRecord::Migration[5.2]
  def change
    create_table :poem_lists do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :poem, foreign_key: true

      t.timestamps
    end
  end
end
