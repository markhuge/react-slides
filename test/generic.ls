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

describe 'Generic iFrame embed', ->

  before 'render and cache the element', ->
    slides = render (Slides url: \http://google.com)
    iframe = find-tag(slides, \iframe).get-DOM-node!
    div    = find-class(slides, 'react-slides').get-DOM-node!

    @elements =
      iframe: iframe
      div: div

  specify 'wrapper div', ->
    assert @elements.div.get-attribute(\class) == 'react-slides'


  specify 'iframe', ->
    assert @elements.iframe.get-attribute('src') == 'http://google.com'
