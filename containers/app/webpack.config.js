
module.exports = {
    entry: ['babel-polyfill', './src/app/index.js'],
    output: {
        path: __dirname + '/src/public',
        filename: 'bundle.js'
    },
    module: {
        loaders: [
            {
                test: /\.js$/, // a regular expression that catches .js files
                exclude: /node_modules/,
                loader: 'babel-loader'
            }
        ]
    }
};