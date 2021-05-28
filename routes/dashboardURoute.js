const router = require('express').Router()

const dashboardUController = require('../controllers/dashboardUController')
//--------------------------------------------- // Tableau de bord ------------------------------------------------------
// GET

router.get('/', dashboardUController.getDashboardUPage)

//router.get('/dashboardU', dashboardUController.getDashboardUPage)

// POST
router.post('/dashboardU', dashboardUController.postdashboardUPage)
module.exports = router;