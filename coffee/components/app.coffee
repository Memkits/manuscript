
React = require 'react'
$ = React.DOM

store = require '../store'

Card = require './card'
Note = require './note'

module.exports = React.createClass
  displayName: 'App'

  getInitialState: ->
    focused: null

  newCard: ->
    data = store.new()
    @setState focused: data.id

  selectCard: (id) ->
    @setState focused: id

  render: ->
    cards = @props.data.map (item) =>
      Card
        data: item
        key: item.id
        onSelect: @selectCard

    focusedCards = @props.data.filter (item) =>
      item.id is @state.focused

    $.div className: 'app',
      $.section className: 'sidebar',
        $.div className: 'toolbar',
          $.div
            className: 'button'
            onClick: @newCard
            'Create'
        $.div
          className: 'cards',
          style:
            height: '100%'
          cards
      if focusedCards.length
        Note data: focusedCards[0]
      else
        $.section className: 'note empty',
          $.span className: 'holder',
            'No note is selected'