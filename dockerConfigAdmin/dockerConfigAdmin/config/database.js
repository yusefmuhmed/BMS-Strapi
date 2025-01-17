module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'postgres',
        host: env('DATABASE_HOST', 'localhost'),
        port: env.int('DATABASE_PORT', 5432),
        database: env('DATABASE_NAME', 'strapi'),        // Changed to match Docker
        username: env('DATABASE_USERNAME', 'strapi2'),   // Changed to match Docker
        password: env('DATABASE_PASSWORD', 'strapi'),    // Changed to match Docker
      },
      options: {
        useNullAsDefault: true,
        pool: {
          max: 50,
        },
      },
    },
  },
});