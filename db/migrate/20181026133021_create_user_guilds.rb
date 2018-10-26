class CreateUserGuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :user_guilds do |t|
      t.references :user, index: true
      t.references :guild, index: true

      t.timestamps
    end
  end
end
