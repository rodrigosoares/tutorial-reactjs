@Task = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.task.name
      React.DOM.td null, @props.task.done
