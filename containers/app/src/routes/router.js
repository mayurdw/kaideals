"use strict";

const express = require("express");

exports.create = function(routes, views) {
    var router = express.Router();
    routes.forEach(function(route, name) {
        let verb = route.verb.toLowerCase();
        router[verb](route.url, views[name]);
    });

    return router;
};

