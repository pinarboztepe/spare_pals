class AddWordToPals < ActiveRecord::Migration[7.0]
  def change
    add_column :pals, :word, :string
  end
end
