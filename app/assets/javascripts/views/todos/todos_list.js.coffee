jQuery ->
  class TodoListView extends Backbone.View
    el: "#todo-list"

    initialize: ->
      console.log("init todolistview")
      @.render()

    render: ->
      console.log("render todolistview")
      $(@el).append('<li>' + 'nya-' + '</li>')

  todoListView = new TodoListView

