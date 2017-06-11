module.exports = {
  paths: {
    '/user': {
      get: {
        summary: 'List all users',
        operationId: 'listusers',
        tags: [ 'user' ],
        parameters: [
          {
            name: 'limit',
            in: 'query',
            description: 'How many items to return at one time (max 100)',
            required: false,
            type: 'integer',
            format: 'int32'
          }
        ],
        responses: {
          200: {
            description: 'An paged array of users',
            headers: {
              'x-next': {
                type: 'string',
                description: 'A link to the next page of responses'
              }
            },
            schema: {
              $ref: '#/definitions/users'
            }
          },
          default: {
            description: 'unexpected error',
            schema: {
              $ref: '#/definitions/Error'
            }
          }
        }
      },
      post: {
        summary: 'Create a user',
        operationId: 'createusers',
        tags: [ 'users' ],
        responses: {
          201: {
            description: 'Null response'
          },
          default: {
            description: 'unexpected error',
            schema: {
              $ref: '#/definitions/Error'
            }
          }
        }
      }
    },
    '/users/{userId}': {
      get: {
        summary: 'Info for a specific user',
        operationId: 'showuserById',
        tags: [ 'users' ],
        parameters: [
          {
            name: 'userId',
            in: 'path',
            required: true,
            description: 'The id of the user to retrieve',
            type: 'string'
          }
        ],
        responses: {
          200: {
            description: 'Expected response to a valid request',
            schema: {
              $ref: '#/definitions/users'
            }
          },
          default: {
            description: 'unexpected error',
            schema: {
              $ref: '#/definitions/Error'
            }
          }
        }
      }
    }
  },
  definitions: {
    user: {
      required: [ 'id', 'name' ],
      properties: {
        id: {
          type: 'integer',
          format: 'int64'
        },
        name: {
          type: 'string'
        },
        tag: {
          type: 'string'
        }
      }
    },
    users: {
      type: 'array',
      items: {
        $ref: '#/definitions/user'
      }
    }
  }
};
