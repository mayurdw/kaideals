

    "use strict";

    const throng = require("throng");
    const worker = require("./worker");
    const winston = require("winston");

    process.on("SIGTERM", (id) => {
        winston.info(`Worker ${ id } exiting...`);
        //cleanup would happen here
        process.exit();
    });



    throng( worker);