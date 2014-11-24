# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require_self
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./routers

window.TodoApp = 
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

jQuery ->
  collection = new TodoApp.Collections.TodoCollection()
  todoListView = new TodoApp.Views.TodoListView(collection: collection)
  #collection.fetch(reset: true, data: {page: 1, limit: 3})
  collection.fetch(reset: true)
