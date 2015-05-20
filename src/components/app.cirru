
var
  React $ require :react

var div $ React.createFactory :div

var T React.PropTypes

= module.export $ React.createClass $ object
  :displayName :app

  :render $ \ ()
    return $ div (object (:className :app-root)) :demo
