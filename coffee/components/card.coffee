
React = require 'react'
$ = React.DOM

module.exports = React.createClass
  displayName: 'Card'

  selectCard: ->
    @props.onSelect @props.data.id

  render: ->
    index = @props.order.indexOf @props.data.id
    title = @props.data.text.split('\n')[0]
    $.div
      style:
        top: "#{index * 46}px"
        zIndex: @props.order.length - index
      className: \
        if @props.focused is @props.data.id
          'focused card'
        else
          'card'
      onClick: @selectCard
      $.span className: 'capital', title[0]
      if title.trim().length
        $.span {}, "#{title[1..]}"
      else
        '<no title>'
