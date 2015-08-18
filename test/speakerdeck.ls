require! {
  './helpers': {
    render,
    find-tag,
    find-class,
    React
  }:helpers

  \assert
  '../src/index': slides
}

Slides = React.create-factory slides

describe 'Speakerdeck', ->

  before 'render and cache the element', ->
    slides = render (Slides id: '18b1071f818d4dcc9463c2f27fdaafe3', service: \speakerdeck)
    iframe = find-tag(slides, \iframe).get-DOM-node!
    div    = find-class(slides, 'speakerdeck').get-DOM-node!

    @elements =
      iframe: iframe
      div: div


  specify 'wrapper div', ->
    assert @elements.div.get-attribute(\class) == 'speakerdeck'


  specify 'iframe', ->
    assert @elements.iframe.get-attribute('src') == '//speakerdeck.com/player/18b1071f818d4dcc9463c2f27fdaafe3'
