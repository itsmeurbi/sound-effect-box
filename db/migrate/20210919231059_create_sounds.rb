class CreateSounds < ActiveRecord::Migration[6.1]
  def change
    create_table :sounds do |t|

      t.timestamps
    end
  end
end
