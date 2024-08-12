const sql = require('mssql')
const { config } = require('../constants/config')
const { validationResult } = require('express-validator')

// Handle GET request to fetch responses based on question_pattern
const get = async(req, res, next) => {

  const errors = validationResult(req)
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() })
  }

  var pool
  const { question_pattern } = req.query
  sql
    .connect(config)
    .then((pool_) => {
      pool = pool_
      return pool
            .request()
            .input('question_pattern', sql.NVarChar(255), question_pattern)
            .execute('PROC_GET_RESPONSE')
    })
    .then((result) => {
      res.json(result.recordset)
    })
    .catch((err) => {
      console.error(err)
      res.status(500).json({ 
        error: err.message || err.toString() 
      })
      next(err)
    })

}

// Handle POST request to insert a new response
const insert = async (req, res, next) => {

  const errors = validationResult(req)
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() })
  }

  var pool
  const { question_pattern, response_text } = req.body
  sql.close()
  sql
    .connect(config)
    .then((pool_) => {
      pool = pool_
      return pool
        .request()
        .input('question_pattern', sql.NVarChar(255), question_pattern)
        .input('response_text', sql.NVarChar(sql.MAX), response_text)
        .execute('PROC_INSERT_RESPONSE')
    })
    .then(() => {
      res.status(201).json({ message: 'Response inserted successfully.' })
    })       
    .catch((err) => {
      console.error(err)
      res.status(500).json({
        error: err.message || err.toString()
      })
      next(err)
    })
}

module.exports = { 
  get, 
  insert 
}
