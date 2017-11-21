"use strict";

const site = require('../site')

exports.get_main = function (req, res, next) {
    console.log("XXXX get main page");

    res.sendFile('public/index.html', {root: site.APP_ROOT});
};

