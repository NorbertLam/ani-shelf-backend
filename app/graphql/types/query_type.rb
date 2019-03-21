module Types
  class QueryType < Types::BaseObject

    Types::QueryType = GraphQL::ObjectType.define do 
      name:"Query"

      field :media !types[Types::MediaType] do
        resolve -> {obj, args, ctx}{
          Media.all
        }
    
      end
    end
  end
end
