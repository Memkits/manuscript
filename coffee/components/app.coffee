
React = require 'react/addons'
$ = React.DOM

ReactCSSTransitionGroup = React.createFactory React.addons.CSSTransitionGroup

store = require '../store'

Card = require './card'
Note = require './note'

module.exports = React.createFactory React.createClass
  displayName: 'App'

  getInitialState: ->
    focused: null

  newCard: ->
    data = store.new()
    @setState focused: data.id

  selectCard: (id) ->
    @setState focused: id

  render: ->
    order = @props.data
    .sort (a, b) => b.updated - a.updated
    .map (item) => item.id

    cards = @props.data
    .sort (a, b) => a.id - b.id
    .map (item) =>
      Card
        data: item
        key: item.id
        order: order
        onSelect: @selectCard
        focused: @state.focused

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
          ReactCSSTransitionGroup transitionName: 'slide',
            cards
      if focusedCards.length
        Note data: focusedCards[0]
      else
        $.section className: 'note empty',
          $.span className: 'holder',
            'No note is selected'