# jquerymobileのroutingなどをoff
# 装飾だけを利用する
$(document).bind "mobileinit", ->
  $.mobile.ajaxEnabled = false
  $.mobile.linkBindingEnabled = false
  $.mobile.hashListeningEnabled = false
  $.mobile.pushStateEnabled = false
  return
