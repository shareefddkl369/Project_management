class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :test_plan_id
      t.integer :requirement_id
      t.string :type
      t.string :title
      t.text :summary
      t.timestamps
    end
  end
end
