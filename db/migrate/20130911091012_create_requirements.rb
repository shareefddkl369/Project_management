class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :requirement_specification_id
      t.string :type
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
