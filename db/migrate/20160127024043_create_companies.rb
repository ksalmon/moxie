class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email_domain

      t.timestamps null: false
    end
  end
end
