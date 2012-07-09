class AddCommunity < ActiveRecord::Migration
  def up
    add_column :fliers, :community, :string
  end

  def down
  end
end
