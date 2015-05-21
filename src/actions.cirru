
var
  dispatcher $ require :./dispatcher

= exports.update $ \ (id text)
  dispatcher.dispatch $ object
    :type :update
    :id id
    :text text

