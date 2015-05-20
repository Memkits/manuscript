
var
  React $ require :react
  store $ require :./store
  App $ React.createFactory $ require :./components/app

React.render (App) document.body
