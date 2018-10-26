class User < ApplicationRecord
  belongs_to :squad
  has_many :user_guilds
  has_many :guilds, through: :user_guilds
end
