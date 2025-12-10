// prisma.config.ts
var config = {
    datasources: {
        db: {
            url: process.env.DATABASE_URL
        }
    }
};
module.exports = config;
