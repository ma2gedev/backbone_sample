TodoApp.Views ?= {}

class TodoApp.Views.TodoListView extends Backbone.View
  el: "#todo-list"

  initialize: ->
    console.log("init todolistview")
    @listenTo @collection, 'reset', =>
      @render()
    @listenTo @collection, 'add', @addTodo

  render: ->
    console.log("render todolistview")
    @collection.each (todo) =>
      @addTodo(todo)

  addTodo: (todo) ->
    view = new TodoApp.Views.TodoView(model: todo)
    @$el.append view.render().el
