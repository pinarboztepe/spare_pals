class AddJobToPals < ActiveRecord::Migration[7.0]
  def change
    add_column :pals, :job, :string
  end
end
