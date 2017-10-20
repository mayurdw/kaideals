"use strict";

const MAIN_ROUTES = new Map([
    ['get_main', { verb: 'get', url: '/' }]
]);

var router = require('./router').create(
    MAIN_ROUTES
    , require('../views')
);

const site = require('../site');
router.use(site.PUBLIC_STATIC);

module.exports = router;
