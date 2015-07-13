class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :micropost_id
      t.string :email
      t.text :body null: false

      t.timestamps null: false
    end
  end
end
