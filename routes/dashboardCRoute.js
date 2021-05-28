const router = require('express').Router()
const dashboardCController = require('../controllers/dashboardCController')
//--------------------------------------------- // Tableau de bord ------------------------------------------------------
// GET
router.get('/', dashboardCController.getDashboardCPage)

module.exports = router;