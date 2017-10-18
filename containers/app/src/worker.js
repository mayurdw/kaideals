"use strict";

const winston = require("winston");
const express = require("express");

module.exports = function() {

    let app = express();
    let routes = require('./routes');
    routes.register(app);

    app.listen(5000, function () {
        console.log('Example app listening on port 5000!')
    });
};

