class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :shout
      t.belongs_to :user

      t.timestamps
    end
  end
end
