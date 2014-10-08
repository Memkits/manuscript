
React = require 'react'
$ = React.DOM

module.exports = React.createClass
  displayName: 'Card'

  selectCard: ->
    @props.onSelect @props.data.id

  render: ->
    $.div
      className: 'card'
      onClick: @selectCard
      "#{@props.data.text[..10]}..."