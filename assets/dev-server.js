// dev-server.js
require('esbuild-server')
  .createServer(
    {
      bundle: true,
      entryPoints: ['targets/intro-app.js' ],
    },
    {
      static: 'www'
    }
  )
  .start();
