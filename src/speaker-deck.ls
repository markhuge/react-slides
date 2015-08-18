require! 'react/addons': {{string }:Prop-types}:React
require! './iframe'

{ div } = React.DOM

Iframe = React.create-factory iframe

module.exports = React.create-class({
  should-component-update: (props) ->
    @props.id != props.id

  render: ->
    div class-name: \speakerdeck,
      Iframe url: "//speakerdeck.com/player/#{@props.id}"
})
