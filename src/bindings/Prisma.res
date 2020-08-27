type prisma 
type contextType = {
  prisma: prisma
}
@bs.new @bs.module("@prisma/client")
external prismaClient: unit => prisma = "PrismaClient"
