TodoApp.Views ?= {}

class TodoApp.Views.TodoView extends Backbone.View
  tagName: "li"
  initialize: ->
    console.log("init todoview")
    @listenTo @model, 'change', =>
      @render()

  render: ->
    console.log("render todoview")
    @$el.html @model.toJSON().name
    @
