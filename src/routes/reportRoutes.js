const express = require('express');
const router = express.Router();
const reportController = require("../controllers/reportControllers");
const apikey = require("../config/apikey");


router.use(apikey);
router.get("/pdf", reportController.exportUserPDF);

module.exports = router;

