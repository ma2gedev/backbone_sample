TodoApp.Collections ?= {}

class TodoApp.Collections.TodoCollection extends Backbone.Collection
  model: TodoApp.Models.Todo
  url: '/todos'
