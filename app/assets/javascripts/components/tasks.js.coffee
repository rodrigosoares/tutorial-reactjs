@Tasks = React.createClass
  getInitialState: ->
    tasks: @props.data
  getDefaultProps: ->
    tasks: []
  render: ->
    React.DOM.div
      className: 'container'
      React.DOM.div
        className: 'row'
        React.DOM.table
          className: 'table table-bordered'
          React.DOM.thead null,
            React.DOM.tr null,
              React.DOM.th null, 'Task'
              React.DOM.th null, 'Done?'
          React.DOM.tbody null,
            for task in @state.tasks
              React.createElement Task, key: task.id, task: task
