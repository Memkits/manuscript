
var
  shortid $ require :shortid
  immutable $ require :immutable

= module.exports $ \ ()
  var now $ new Date
  return $ immutable.fromJS $ object
    :id $ shortid.generate
    :text :
    :time $ now.valueOf
