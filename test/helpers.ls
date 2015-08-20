require! \jsdom

global.document  = jsdom.jsdom '<!doctype html><html><body></body></html>'
global.window    = document.parentWindow
global.navigator = user-agent: 'node.js'

require! {
  # React Test utils insanity
  'react/addons': {{{
    render-into-document:                    render,
    find-rendered-DOM-component-with-class:  find-class,
    find-rendered-DOM-component-with-tag:    find-tag
  }:Test-utils}:addons}:React

}

module.exports =
  render:      render
  find-class:  find-class
  find-tag:    find-tag
  React:       React
