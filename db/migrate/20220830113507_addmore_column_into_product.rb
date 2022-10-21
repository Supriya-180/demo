class AddmoreColumnIntoProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :email, :text
    add_column :products, :email_confirmation, :text
    add_column :products, :password, :text
    add_column :products, :password_confirmation, :text 
  end
end
