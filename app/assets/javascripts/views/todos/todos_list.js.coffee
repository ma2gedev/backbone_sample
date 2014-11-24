TodoApp.Views ?= {}

class TodoApp.Views.TodoListView extends Backbone.View
  el: "#todo-list"

  initialize: ->
    console.log("init todolistview")
    @.render()

  render: ->
    console.log("render todolistview")
    _(3).times =>
      view = new TodoApp.Views.TodoView
      @$el.append view.render().el

