class AddUserIdToChannels < ActiveRecord::Migration[5.1]
  def change
    add_column :channels, :user_id, :string
    add_column :channels, :channel_type, :string
  end
end
