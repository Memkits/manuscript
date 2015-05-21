
var
  React $ require :react
  store $ require :./store
  App $ React.createFactory $ require :./components/app

var render $ \ ()
  var notes $ store.get
  React.render (App (object (:notes notes))) document.body

store.addChangeListener render
render
