module Prisma = {
  type prisma
  type context = {
    prisma: prisma
  }
}

@bs.new @bs.module("@prisma/client")
external prismaClient: unit => Prisma.prisma = "PrismaClient"
