class DropTable < ActiveRecord::Migration
  def up
    drop_table :fliers
  end

  def down
  end
end
