class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :token
      t.references :user
    end
  end
end
