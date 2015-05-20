
var
  events $ require :events
  immutable $ require :immutable
  assign $ require :object-assign
  shortid $ require :shortid

var dispatcher $ require :./dispatcher

var store $ new events.EventEmitter
var $ _store $ immutable.List

= module.exports store

assign store $ object
  :emitChange $ \ ()
    this.emit :change

  :addChangeListener $ \ (cb)
    this.on :change cb

  :removeChangeListener $ \ (cb)
    this.removeListener :change cb

  :get $ \ ()
    return _store

= store.dispatchToken $ dispatcher.register $ \ (action)
  switch action.type
    :update
      console.log :update
      store.emitChange
