class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.integer :book_id
      t.string :link

      t.timestamps
    end
  end
end
