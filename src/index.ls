require! {
  'react/addons': React
  './iframe'
  './speaker-deck': speakerdeck
}

{ div, p } = React.DOM

Iframe      = React.create-factory iframe
SpeakerDeck = React.create-factory speakerdeck

module.exports = React.create-class({

  get-initial-state: ->
    loaded: false

  component-did-mount: ->
    @set-state loaded: true

  render: ->
    div class-name: 'react-slides',
      if @state.loaded
        if @props.service == \speakerdeck
          SpeakerDeck id: @props.id
        else
          Iframe url: @props.url
      else
        p  null, 'Loading...'
})
