TodoApp.Views ?= {}

class TodoApp.Views.TodoView extends Backbone.View
  tagName: "li"
  initialize: ->
    console.log("init todoview")

  render: ->
    console.log("render todoview")
    @$el.html @model.toJSON().name
    @
