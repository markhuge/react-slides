require! 'react/addons': React

{ iframe, div } = React.DOM

module.exports = React.create-class({
  render: ->
    div class-name: 'react-slides',
      # Add logic for non-iframe embed in a sec
      iframe src: @props.url, frame-border: 0, allow-full-screen: true, scrolling: no
})
