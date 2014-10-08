
React = require 'react'
$ = React.DOM

Card = require './card'

module.exports = React.createClass
  displayName: 'App'

  getInitialState: ->
    focused: null

  render: ->
    cards = @props.data.map (item) =>
      Card data: item

    focusedCards = @props.data.filter (item) =>
      item.id is @state.focused

    $.div className: 'app',
      $.section className: 'sidebar',
        cards
      $.article className: 'note',
        if focusedCards.length
          $.textarea value: focusedCards[0].text