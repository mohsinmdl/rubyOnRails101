class RemoveStudentFromProject < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :student, :integer
  end
end
