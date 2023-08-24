class AddIntroToPals < ActiveRecord::Migration[7.0]
  def change
    add_column :pals, :intro, :text
  end
end
