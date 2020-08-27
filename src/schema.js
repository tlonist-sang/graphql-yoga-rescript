const { nexusSchemaPrisma } = require('nexus-plugin-prisma/schema')
const { makeSchema, objectType } = require('@nexus/schema')

const WikiCategory = objectType({
  name: 'T_WIKI_CATG1',
  definition(t) {
    t.model.WC_CD()
    t.model.WC_NM()
  }
})

const Query = objectType({
  name: 'Query',
  definition(t) {
    t.list.field('categories', {
      type: 'T_WIKI_CATG1',
      resolve: (parent, args, ctx, info) => ctx.prisma.t_WIKI_CATG1.findMany()
    })
  }
})

const schema = makeSchema({
  types: [Query, WikiCategory],
  plugins: [nexusSchemaPrisma()],
  outputs: {
    schema: __dirname + '/../schema.graphql',
  },
})

module.exports = {
  schema
}
