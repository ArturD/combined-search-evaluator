class Throttle
  constructor: (@_delay, @_reduce) ->
    @_queue = []
    @_pending = false

  put: (ev) ->
    @_queue.push(ev)
    if !@_pending
      @_pending = true
      window.setTimeout(( => @reduce()), @_delay)

  reduce: ->
    @_reduce(@_queue)
    @_pending = false
    @_queue = []

window.Throttle = Throttle
