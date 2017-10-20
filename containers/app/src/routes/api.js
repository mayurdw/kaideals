"use strict";

const API_ROUTES = new Map([
    ['get_deals', { verb: 'get', url: '/deals' }]
    , ['create_deal', { verb: 'post', url: '/deals' }]
]);

module.exports = require('./router').create(
    API_ROUTES
    , require('../views')
);

