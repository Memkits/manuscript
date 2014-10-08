
Dispatcher = require './tool/dispatcher'

module.exports = store = new Dispatcher

rawData = localStorage.getItem('manuscript') or '[]'
storage = JSON.parse rawData

window.onbeforeunload = ->
  rawData = JSON.stringify storage
  localStorage.setItem 'manuscript', rawData

store.get = ->
  storage

store.new = ->
  storage.unshift
    id: (new Date).valueOf()
    text: ''
  @emit()

store.update = (data) ->
  for item, index in storage
    if item.is is data.id
      storage.splice index, 1
      break
  storage.unshift data
  @emit()