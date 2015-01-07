class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :photo
      t.text :bio
      t.integer :category_id

      t.timestamps
    end
  end
end
