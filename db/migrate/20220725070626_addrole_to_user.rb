class AddroleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
