class CreateChannels < ActiveRecord::Migration[5.1]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :username
      t.boolean :connected

      t.timestamps
    end
  end
end
