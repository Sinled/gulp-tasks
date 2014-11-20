###*
 * @uses node module 'colors'
###

colors = require 'colors'

module.exports = (error) ->
  console.log [
    '',
    "----------ERROR MESSAGE START----------".bold.red,
    ("[" + error.name + " in " + error.plugin + "]").red.bold.inverse,
    error.message,
    "----------ERROR MESSAGE END----------".bold.red,
    ''
  ].join '\n'
  this.end()
