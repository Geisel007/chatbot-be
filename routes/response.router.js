const router = require('express').Router()
const ResponseController = require('../controllers/response.controller')
const {
  validateGetResponses,
  validateInsertResponse
} = require('../validations/response.validation')

router.get('/response', validateGetResponses, ResponseController.get)
router.post('/response', validateInsertResponse, ResponseController.insert)

module.exports = router
