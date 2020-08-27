open GraphQLServer
open Prisma


let config: config<Nexus.schemaType, Prisma.contextType> = {
    schema: Context.nexusSchema,
    context: Context.prismaContext
}

let server = graphQLServer(config)
server->start(()=>Js.log("Running at localhost:4000!"))