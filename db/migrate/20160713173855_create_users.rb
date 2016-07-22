class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :oauth_google

      t.timestamps null: false
    end
  end
end
