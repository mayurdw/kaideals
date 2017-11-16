
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const extractSass = new ExtractTextPlugin({
  filename: '/stylesheets/screen.css',
  allChunks: true
});
module.exports = {
    entry: ['./src/app/index.js'],
    output: {
        path: __dirname + '/src/public',
        filename: 'bundle.js'
    },
    module: {
      rules: [
        {
          test: /\.scss$/,
          use: extractSass.extract({
            use: [
              {
                loader: "css-loader"
              },
              {
                loader: "sass-loader",
                options: {
                  includePaths: ['./node_modules/compass-mixins/lib']
                }
              }
            ],
            fallback: "style-loader"
          })
        },
        {
          test: /\.js$/,
          loader: 'babel-loader',
          exclude: /node_modules/
        },
        {
          test: /\.jsx$/,
          loader: 'babel-loader',
          exclude: /node_modules/
        }
      ]
    },
    plugins: [
        extractSass
    ]
};
