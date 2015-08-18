require! {
  'react/addons': React
  './iframe'
  './speaker-deck': speakerdeck
}

{ div } = React.DOM

Iframe      = React.create-factory iframe
SpeakerDeck = React.create-factory speakerdeck

module.exports = React.create-class({
  render: ->
    div class-name: 'react-slides',
      # Add logic for non-iframe embed in a sec
      if @props.service == \speakerdeck
        SpeakerDeck id: @props.id
      else
        Iframe url: @props.url
})
