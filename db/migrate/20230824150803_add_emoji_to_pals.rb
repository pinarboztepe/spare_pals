class AddEmojiToPals < ActiveRecord::Migration[7.0]
  def change
    add_column :pals, :emoji, :string
  end
end
