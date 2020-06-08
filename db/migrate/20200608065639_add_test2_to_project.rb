class AddTest2ToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :test2, :integer
  end
end
