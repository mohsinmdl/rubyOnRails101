class AddTestToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :test, :integer
  end
end
