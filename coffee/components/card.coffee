
React = require 'react'
$ = React.DOM

module.exports = React.createClass
  displayName: 'Card'

  render: ->
    $.div className: 'card',
      @props.data.text[..4]