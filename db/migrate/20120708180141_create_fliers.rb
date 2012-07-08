class CreateFliers < ActiveRecord::Migration
  def self.up
    create_table :fliers do |t|
      t.string :title
      t.string :tagline
      t.text :description
      t.datetime :starttime
      t.datetime :endtime
      t.string :imageurl

      t.timestamps
    end
  end

  def self.down
    drop_table :fliers
  end
end
