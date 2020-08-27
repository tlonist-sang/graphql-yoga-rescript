// Generated by BUCKLESCRIPT, PLEASE EDIT WITH CARE
'use strict';

var GraphqlYoga = require("graphql-yoga");
var Context$GraphqlYogaRescript = require("./context.bs.js");

var config = {
  schema: Context$GraphqlYogaRescript.nexusSchema,
  context: Context$GraphqlYogaRescript.prismaContext
};

var server = new GraphqlYoga.GraphQLServer(config);

server.start(function (param) {
      console.log("Running at localhost:4000!");
      
    });

exports.config = config;
exports.server = server;
/* server Not a pure module */
