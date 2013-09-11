class CreateTestSpecifications < ActiveRecord::Migration
  def change
    create_table :test_specifications do |t|

      t.timestamps
    end
  end
end
