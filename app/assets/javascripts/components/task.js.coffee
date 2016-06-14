@Task = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.task.name
      React.DOM.td null,
        React.DOM.a
          className: doneButton(@props.task.done)
          React.DOM.span
            className: 'glyphicon glyphicon-ok'
