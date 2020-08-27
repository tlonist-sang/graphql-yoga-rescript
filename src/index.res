open GraphQLServer
open Prisma
open Query

let resolvers = {
    Query.categories
}

let graphQLConfig: GraphQL.config<Prisma.context> = {
    typeDefs: Node_fs.readFileAsUtf8Sync("/Users/tlonist/Documents/company/greenlabs/graphql-yoga-rescript/src/schema.graphql"),
    resolvers: resolvers,
    context: Context.prismaContext
}

let server = graphQLServer(graphQLConfig)
server->start(()=>Js.log("Running at 4000!"))