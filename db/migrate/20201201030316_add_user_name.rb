class AddUserName < ActiveRecord::Migration[6.0]
  def change
              #table   #column    #type
    add_column :users, :username, :string

  end
end
