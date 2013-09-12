class CreateTestSpecifications < ActiveRecord::Migration
  def change
    create_table :test_specifications do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
