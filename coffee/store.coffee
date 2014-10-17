
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
  time = (new Date).valueOf()
  data =
    id: time
    updated: time
    text: ''
  storage.push data
  @emit()
  return data

store.update = (data) ->
  for item, index in storage
    if item.id is data.id
      item.text = data.text
      item.updated = (new Date).valueOf()
      break
  @emit()

store.touch = (id) ->
  for item, index in storage
    if item.id is id
      item.updated = (new Date).valueOf()
      break
  @emit()

store.delete = (id) ->
  for item, index in storage
    if item.id is id
      storage.splice index, 1
      break
  @emit()