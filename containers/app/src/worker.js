"use strict";

const winston = require("winston");
const express = require("express");
const path = require("path");

module.exports = function() {


    let app = express();

    app.use(express.static(path.join(__dirname, 'public')));


    app.all("/",function (req, res) {

        console.log("XXXXXXXX");

        res.sendFile('public/index.html', {root: __dirname })

    });


    app.listen(5000, function () {
        console.log('Example app listening on port 3000!')
    })
};