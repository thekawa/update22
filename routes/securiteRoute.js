

const router = require('express').Router();
const securiteController = require('../controllers/securiteController')

// GET - securite Page
router.get("/", securiteController.getSecuritePage)

module.exports = router;