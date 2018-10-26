module Types
  class UserType < GraphQL::Schema::Object
  end

  class SquadType < GraphQL::Schema::Object
    field :name, String, null: false
    field :users, [UserType], null: false
  end

  class GuildType < GraphQL::Schema::Object
    field :name, String, null: false
    field :users, [UserType], null: false
  end

  class UserType < GraphQL::Schema::Object
    field :name, String, null: false
    field :squad, SquadType, null: false
    field :guilds, [GuildType], null: false
  end

  class QueryType < GraphQL::Schema::Object
    field :allUsers, [UserType], resolve: -> (_, _, _) { User.all }, null: false
    field :allGuilds, [GuildType], resolve: -> (_, _, _) { Guild.all }, null: false
    field :allSquads, [SquadType], resolve: -> (_, _, _) { Squad.all }, null: false
  end
end
