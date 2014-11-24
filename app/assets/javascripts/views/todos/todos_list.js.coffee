TodoApp.Views ?= {}

class TodoApp.Views.TodoListView extends Backbone.View
  el: "#todo-list"

  initialize: ->
    console.log("init todolistview")
    @listenTo @collection, 'reset', =>
      @render()

  render: ->
    console.log("render todolistview")
    @collection.each (todo) =>
      view = new TodoApp.Views.TodoView(model: todo)
      @$el.append view.render().el

