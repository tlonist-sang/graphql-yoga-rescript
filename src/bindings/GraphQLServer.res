open Prisma
module GraphQL = {
    type server
    type resolvers
    type context = {
        prisma: Prisma.prisma
    }
    type config<'contextType> = {
        typeDefs: string
        resolvers: unit => unit
        context: 'contextType
    }
    type startOption<'serverType> = {
        app: 'serverType
    }
}

type config<'schema, 'context> = {
    schema: 'schema
    context: 'context
}
type server

@bs.new @bs.module("graphql-yoga")
external graphQLServer: config<'schema, 'context> => server = "GraphQLServer"

@bs.send
external start: (server, unit => unit) => unit = "start"