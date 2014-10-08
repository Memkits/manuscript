
store = require './store'

React = require 'react'
$ = React.DOM

App = require './components/app'

store.addChangeListener ->
  app = App data: store.get()
  React.renderComponent app, document.body

store.emit()