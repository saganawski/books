class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :book_id
      t.integer :commenter_id

      t.timestamps
    end
  end
end
