TodoApp.Views ?= {}

class TodoApp.Views.NewView extends Backbone.View
  template: _.template("""
    <form id="new-todo" name="todo" action="/todos" method="post">
      <div class="field">
        <label for="name"> name:</label>
        <input type="text" name="todo[name]" id="name" value="" >
      </div>

      <div class="actions">
        <input type="submit" value="Create Todo" />
      </div>
    </form>
  """)

  events:
    "submit #new-todo": "save"

  initialize: ->

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()
    @collection.create(name: @$('#name').val())

  render: ->
    @$el.html(@template())
    @

