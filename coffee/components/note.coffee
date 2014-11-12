
React = require 'react/addons'
$ = React.DOM

store = require '../store'

module.exports = React.createFactory React.createClass
  displayName: 'Note'

  componentDidMount: ->
    @refs.text.getDOMNode().focus()

  componentDidUpdate: ->
    @refs.text.getDOMNode().focus()

  changeText: (event) ->
    store.update
      id: @props.data.id
      text: event.target.value

  deleteNote: ->
    store.delete @props.data.id

  render: ->
    $.article className: 'note',
      $.div className: 'toolbar',
        $.div
          className: 'button',
          onClick: @deleteNote
          "Delete"
      $.textarea
        ref: 'text'
        onChange: @changeText
        value: @props.data.text
        placeholder: 'Write...'