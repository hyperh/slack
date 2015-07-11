Template.footer.events 

  'keypress input': (e) ->
    inputVal = $(".input-box_text").val()
    if !!inputVal
      charCode = if typeof e.which is "number" then e.which else e.keyCode
      if charCode is 13
        e.stopPropagation()
        Messages.insert {text: inputVal}
        $(".input-box_text").val("")
        false