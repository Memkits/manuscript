
store = require './store'

React = require 'react/addons'
$ = React.DOM

App = require './components/app'

store.addChangeListener ->
  app = App data: store.get()
  React.render app, document.body

store.emit()