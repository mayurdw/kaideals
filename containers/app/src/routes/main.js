var express = require("express");
var router = express.Router();

const path = require("path");
var APP_ROOT = path.join(__dirname, '..')

router.use(express.static(path.join(APP_ROOT, 'public')));
router.get('/', function (req, res) {
    console.log("XXXXXXXX");

    res.sendFile('public/index.html', {root: APP_ROOT});
});

module.exports = router;
