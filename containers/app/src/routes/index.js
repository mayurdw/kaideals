exports.register = function(app) {
    app.use('/', require('./main'));
    app.use('/api', require('./api'));
};

