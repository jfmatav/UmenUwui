class AddPasswordToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :password, :string
  end
end
