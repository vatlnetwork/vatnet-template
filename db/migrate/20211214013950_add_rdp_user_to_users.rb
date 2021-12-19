class AddRdpUserToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :rdp_user, :string
  end
end
