
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
  data =
    id: (new Date).valueOf()
    text: ''
  storage.unshift data
  @emit()
  return data

store.update = (data) ->
  for item, index in storage
    if item.id is data.id
      storage.splice index, 1
      break
  storage.unshift data
  @emit()

store.delete = (id) ->
  for item, index in storage
    if item.id is id
      storage.splice index, 1
      break
  @emit()