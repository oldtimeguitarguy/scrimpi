mongoose = require 'mongoose'

# Import base schema
TagSchema = require './_schema'

# Set fields
TagSchema.add
  name: type: String, required: true, uppercase: true, trim: true, unique: true

# INSTANTIATE AND EXPORT ---------------
module.exports = mongoose.model 'Tag', TagSchema