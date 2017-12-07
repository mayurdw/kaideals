"use strict";

const sql = require('../sql').Deals;

class DealsStore {
    constructor(db, pgp) {
        this.db = db;
        this.pgp = pgp;
    }

    add(deal) {

    }

    find(params) {
        return this.db.any(sql.find);
    }
}

module.exports = DealsStore;

