class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.integer :fbid
      t.string :fname
      t.string :lname
      t.string :image
      t.datetime :oauth_expires_at
      t.string :oauth_token

      t.timestamps
    end
  end

  def self.down
  end
end
