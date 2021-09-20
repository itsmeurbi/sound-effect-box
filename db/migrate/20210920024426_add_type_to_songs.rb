class AddTypeToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :sounds, :sound_type, :integer
  end
end
