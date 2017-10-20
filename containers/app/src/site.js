"use strict";

const path = require("path");

exports.APP_ROOT = __dirname;
exports.PUBLIC_DIR = path.join(exports.APP_ROOT, 'public');

const express = require("express");
exports.PUBLIC_STATIC = express.static(exports.PUBLIC_DIR);

