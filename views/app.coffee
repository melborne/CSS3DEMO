$ ->
  tbox = $(".textbox")
  ttexts = $(".textbox, .textbox>*")

  $("#slider").change (event)->
    tbox.css('webkitColumnCount', event.target.value)

  fonts = ['Molengo', 'Vollkorn', 'Droid Sans', 'Verdana']
  $(".button#webfont").toggle(
    -> ttexts.css('font-family', fonts[0]); $(this).text fonts[0]
    -> ttexts.css('font-family', fonts[1]); $(this).text fonts[1]
    -> ttexts.css('font-family', fonts[2]); $(this).text fonts[2]
    -> ttexts.css('font-family', fonts[3]); $(this).text 'Web Font'
  )

  $(".button#textstroke").toggle(
    -> tbox.addClass('textstroke');    $(this).text 'Stroked'
    -> tbox.removeClass('textstroke'); $(this).text 'Text Stroke'
  )

  $(".button#gradient").toggle(
    ->
      tbox.css 'background', '-webkit-gradient(linear, left top, left bottom, from(#49b9e9), to(#cceedd), color-stop(0.5, #ccc0f6))'
      $(this).text '#1'
    ->
      tbox.css 'background', '-webkit-gradient(radial, center center, 0, center center, 800, to(#cceedd), from(#49b9ff), color-stop(0.5, #ccc0f6) )'
      $(this).text '#2'
    ->
      tbox.css 'background', '-webkit-gradient(linear, left center, right center, from(#49b9e9), to(#cceedd), color-stop(0.5, #cceedd), color-stop(0.5, #49b9e9))'
      $(this).text '#3'
    ->
      tbox.css 'background', '#eed'
      $(this).text 'Gradient'
  )

  $(".button#shadow").toggle(
    -> elm.addClass("shadow") for elm in [tbox, $(this)]
    -> elm.removeClass("shadow") for elm in [tbox, $(this)]
  )

  $(".button#transform").toggle(
    ->
      $(this).text 'rotate'
      tbox.css '-webkit-transform', 'rotate(-45deg)'
    ->
      $(this).text 'rotate2'
      tbox.css '-webkit-transform', 'rotate(210deg)'
    ->
      $(this).text 'scale'
      tbox.css '-webkit-transform', 'scaleX(0.7)'
    ->
      $(this).text 'skew'
      tbox.css '-webkit-transform', 'skewX(30deg)'
    ->
      $(this).text 'Transform'
      tbox.css '-webkit-transform', 'none'
  )

  $(".button#transition").toggle(
    ->
      tbox.css 'margin', '0 0 0 100px'
      $(this).text 'left100'
    ->
      tbox.css 'margin', '0 0 0 -200px'
      $(this).text 'right200'
    ->
      tbox.css 'margin', '0 0 0 0'
      $(this).text 'Transision'
  )

  navbox = $(".hbox")
  $("#navibox").toggle(
    -> navbox.css {'-webkit-box-orient': 'vertical', 'position': 'absolute', 'top': '120px', 'left': '30px'}
    -> navbox.css {'-webkit-box-orient': 'horizontal', 'position': 'relative', 'top': '0px', 'left': '0px'}
  )
