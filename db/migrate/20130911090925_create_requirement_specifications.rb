class CreateRequirementSpecifications < ActiveRecord::Migration
  def change
    create_table :requirement_specifications do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :title
      t.text :description
      t.string :type
      t.timestamps
    end
  end
end
