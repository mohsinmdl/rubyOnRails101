class AddStudentToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :student, :string
  end
end
