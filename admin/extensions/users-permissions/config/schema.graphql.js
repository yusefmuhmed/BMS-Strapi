"use strict";

const _ = require("lodash");

/**
 * Throws an ApolloError if context body contains a bad request
 * @param contextBody - body of the context object given to the resolver
 * @throws ApolloError if the body is a bad request
 */
function checkBadRequest(contextBody) {
  if (_.get(contextBody, "statusCode", 200) !== 200) {
    const message = _.get(contextBody, "error", "Bad Request");
    const exception = new Error(message);
    exception.code = _.get(contextBody, "statusCode", 400);
    exception.data = contextBody;
    throw exception;
  }
}

module.exports = {
  type: {
    UsersPermissionsPermission: false, // Make this type NOT queriable.
  },
  definition: /* GraphQL */ `
    type CustomMe {
      id: ID!
      username: String!
      email: String!
      first_name: String!
      second_name: String!
      third_name: String!
      fourth_name: String!
      civil_id: String
      mobile_phone: String
      date_of_birth: Date
      blocked: Boolean
      role: UsersPermissionsMeRole
      center: Center
    }

    type UsersPermissionsLoginCustomPayload {
      jwt: String
      user: CustomMe!
    }

    type UsersPermissionsRefreshTokenPayload {
      jwt: String!
      refresh: String
    }

    type UsersPermissionsRevokeTokenPayload {
      confirmed: Boolean
    }
  `,
  mutation: `
    getUser: CustomMe!
    loginCustom(input: UsersPermissionsLoginInput!): UsersPermissionsLoginCustomPayload!
  `,
  resolver: {
    Mutation: {
      getUser: {
        resolver: "plugins::users-permissions.user.me",
      },
      loginCustom: {
        resolverOf: "plugins::users-permissions.auth.callback",
        resolver: async (obj, options, { context }) => {
          context.params = {
            ...context.params,
            provider: options.input.provider,
          };
          context.request.body = _.toPlainObject(options.input);

          await strapi.plugins["users-permissions"].controllers.auth.callback(
            context
          );
          let output = context.body.toJSON
            ? context.body.toJSON()
            : context.body;

          checkBadRequest(output);
          return {
            user: output.user || output,
            jwt: output.jwt,
          };
        },
      },
    },
  },
};
