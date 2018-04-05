class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.string :title, null: false
    	t.text :content
    	t.string :link
    	t.belongs_to :user, null: false
    	t.timestamps null: false
    end
  end
end
