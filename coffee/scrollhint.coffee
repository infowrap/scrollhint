
$(window).load ->

  $("body").append """
    <div class="scrollhint">
      <div class="header"></div>
      <div class="footer"></div>
    </div>
    """

  scrollHintHeader = $(".scrollhint .header")
  scrollHintFooter = $(".scrollhint .footer")

  $(window).scroll ->
    shaderHeight = 20
    documentHeight = $(document).height()
    windowHeight = $(window).height()
    scrollTop = $(window).scrollTop()
    pagePosition = documentHeight - windowHeight - shaderHeight

    position = pagePosition - scrollTop
    if position > 0 then position = 0
    scrollHintFooter.css "bottom", position

    position = (-scrollTop + shaderHeight) * -1
    if position > 0 then position = 0
    scrollHintHeader.css "top", position
