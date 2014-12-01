class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
    end
    Role.create(:name => "admin")
    Role.create(:name => "editor")
  end
end
