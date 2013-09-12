class CreateTestPlans < ActiveRecord::Migration
  def change
    create_table :test_plans do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
