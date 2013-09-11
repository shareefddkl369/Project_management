class CreateRequirementSpecifications < ActiveRecord::Migration
  def change
    create_table :requirement_specifications do |t|

      t.timestamps
    end
  end
end
