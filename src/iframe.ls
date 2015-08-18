require! 'react/addons': {{string, number}:Prop-types}:React

{ iframe } = React.DOM

module.exports = React.create-class({
  proto-types:
    url: string.is-required
    frame-border: number
    scrolling: string

  get-default-props: ->
    frame-border: 0
    scrolling: \no

  should-component-update: (props) ->
    @props.url != props.url

  render: ->
    { url, style,  frame-border, scrolling } = @props
    iframe src: url,
      frame-border: frame-border,
      scrolling: scrolling
})
