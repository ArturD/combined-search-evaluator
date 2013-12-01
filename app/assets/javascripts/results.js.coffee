# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.score-slider').each (i,e) =>
    throttle = new Throttle 200, (arr) =>
      value = slider.slider("getValue")
      url = $(e).data('update-url')
      attribute = $(e).data('update-attribute')
      data = {}
      data[attribute] = value
      $.ajax(url,
        type: "PUT"
        dataType: "json"
        data: data)
          .done( => console.log('done') )
          .always( => console.log('always') )
          .fail( => console.log('fail') )
    slider = $(e).slider()
    slider.on "slide", =>
      throttle.put(null)
