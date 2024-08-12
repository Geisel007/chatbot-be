const { checkSchema } = require('express-validator')

// Schema for validating request parameters
const responseValidationSchema = {
  question_pattern: {
    in: ['query', 'body'],
    optional: { options: { nullable: false } },
    isString: {
      errorMessage: 'question_pattern must be a string'
    },
    trim: true,
    escape: true,
    notEmpty: {
      errorMessage: 'question_pattern cannot be an empty string'
    }
  },
  response_text: {
    in: ['body'],
    exists: {
      errorMessage: 'response_text is required'
    },
    isString: {
      errorMessage: 'response_text must be a string'
    },
    trim: true,
    escape: true,
    notEmpty: {
      errorMessage: 'response_text cannot be an empty string'
    }
  }
}

const validateGetResponses = checkSchema({
  question_pattern: responseValidationSchema.question_pattern
})

const validateInsertResponse = checkSchema({
  question_pattern: responseValidationSchema.question_pattern,
  response_text: responseValidationSchema.response_text
})

module.exports = {
  validateGetResponses,
  validateInsertResponse
}
