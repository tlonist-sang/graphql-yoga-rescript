module GraphQL = {
    type server
    type resolvers
    type context
    type config<'contextType> = {
        typeDefs: string
        resolvers: unit => unit
        context: 'contextType
    }
    type startOption<'serverType> = {
        app: 'serverType
    }
}

@bs.new @bs.module("graphql-yoga")
external graphQLServer: GraphQL.config<'contextType>=>GraphQL.server = "GraphQLServer"

@bs.send
external start: (GraphQL.server, unit => unit) => unit = "start"