class ChangeStudentFromProjects < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :student, :integer
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
