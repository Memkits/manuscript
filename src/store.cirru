
var
  events $ require :events
  immutable $ require :immutable
  assign $ require :object-assign
  createNote $ require :./util/create-note

var dispatcher $ require :./dispatcher

var store $ new events.EventEmitter
var $ _store $ immutable.List

if (is _store.size 0) $ do
  = _store $ _store.push (createNote)

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
  console.info action
  switch action.type
    :update
      = _store $ _store.map $ \ (note)
        console.debug (note.get :id) action.id
        return $ cond
          is (note.get :id) action.id
          note.set :text action.text
          , note
      var emptyNotes $ _store.filter $ \ (note)
        return $ is (note.get :text) :

      if (is emptyNotes.size 0) $ do
        = _store $ _store.push (createNote)

      if (> emptyNotes.size 1) $ do
        = _store $ _store.filter $ \ (note)
          if (isnt (note.get :text) :) $ do
            return true
          return $ is (note.get :id) action.id

      store.emitChange
