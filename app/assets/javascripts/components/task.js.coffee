@Task = React.createClass
  handleCheck: (e) ->
    e.preventDefault()
    data =
      done: !@props.task.done
    $.ajax
      method: 'PUT'
      url: "/tasks/#{ @props.task.id }"
      dataType: 'JSON'
      data:
        task: data
      success: (data) =>
        @props.handleCheckTask @props.task, data
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.task.name
      React.DOM.td null,
        React.DOM.a
          className: doneButton(@props.task.done)
          onClick: @handleCheck
          React.DOM.span
            className: 'glyphicon glyphicon-ok'
