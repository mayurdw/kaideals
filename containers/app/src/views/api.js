"use strict";

exports.get_deals = function(req, res, next) {
    res.send('/api/deals');
};

exports.create_deal = function(req, res, next) {
    console.log('POST /api/deals');
    res.sendStatus(200);
};

