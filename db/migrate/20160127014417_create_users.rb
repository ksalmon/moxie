class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :email
      t.string :position
      t.string :api_key

      t.timestamps null: false
    end
  end
end
