jQuery ->
  class TodoView extends Backbone.View
    tagName: "li"
    initialize: ->
      console.log("init todoview")

    render: ->
      console.log("render todoview")
      $(@el).append('nya-')
      @

  class TodoListView extends Backbone.View
    el: "#todo-list"

    initialize: ->
      console.log("init todolistview")
      @.render()

    render: ->
      console.log("render todolistview")
      _(3).times =>
        view = new TodoView
        @$el.append view.render().el

  todoListView = new TodoListView

