TodoApp.Views ?= {}

class TodoApp.Views.TodoView extends Backbone.View
  tagName: "li"
  initialize: ->
    console.log("init todoview")
    @listenTo @model, 'change', =>
      @render()
    @listenTo @model, 'remove', =>
      @remove()

  render: ->
    console.log("render todoview")
    @$el.html @model.toJSON().name
    @
