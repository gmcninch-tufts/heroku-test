// dev-server.js
const PORT = process.env.PORT || 5001;

require('esbuild-server')
  .createServer(
    {
      bundle: true,
      entryPoints: ['targets/intro-app.js' ],
    },
    {
      static: 'www',
      port: PORT
    }
  )
  .start();
