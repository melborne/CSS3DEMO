(function() {
  $(function() {
    var fonts, navbox, tbox, ttexts;
    tbox = $(".textbox");
    ttexts = $(".textbox, .textbox>*");
    $("#slider").change(function(event) {
      return tbox.css('webkitColumnCount', event.target.value);
    });
    fonts = ['Molengo', 'Vollkorn', 'Droid Sans', 'Verdana'];
    $(".button#webfont").toggle(function() {
      ttexts.css('font-family', fonts[0]);
      return $(this).text(fonts[0]);
    }, function() {
      ttexts.css('font-family', fonts[1]);
      return $(this).text(fonts[1]);
    }, function() {
      ttexts.css('font-family', fonts[2]);
      return $(this).text(fonts[2]);
    }, function() {
      ttexts.css('font-family', fonts[3]);
      return $(this).text('Web Font');
    });
    $(".button#textstroke").toggle(function() {
      tbox.addClass('textstroke');
      return $(this).text('Stroked');
    }, function() {
      tbox.removeClass('textstroke');
      return $(this).text('Text Stroke');
    });
    $(".button#gradient").toggle(function() {
      tbox.css('background', '-webkit-gradient(linear, left top, left bottom, from(#49b9e9), to(#cceedd), color-stop(0.5, #ccc0f6))');
      return $(this).text('#1');
    }, function() {
      tbox.css('background', '-webkit-gradient(radial, center center, 0, center center, 800, to(#cceedd), from(#49b9ff), color-stop(0.5, #ccc0f6) )');
      return $(this).text('#2');
    }, function() {
      tbox.css('background', '-webkit-gradient(linear, left center, right center, from(#49b9e9), to(#cceedd), color-stop(0.5, #cceedd), color-stop(0.5, #49b9e9))');
      return $(this).text('#3');
    }, function() {
      tbox.css('background', '#eed');
      return $(this).text('Gradient');
    });
    $(".button#shadow").toggle(function() {
      var elm, _i, _len, _ref, _results;
      _ref = [tbox, $(this)];
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        elm = _ref[_i];
        _results.push(elm.addClass("shadow"));
      }
      return _results;
    }, function() {
      var elm, _i, _len, _ref, _results;
      _ref = [tbox, $(this)];
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        elm = _ref[_i];
        _results.push(elm.removeClass("shadow"));
      }
      return _results;
    });
    $(".button#transform").toggle(function() {
      $(this).text('rotate');
      return tbox.css('-webkit-transform', 'rotate(-45deg)');
    }, function() {
      $(this).text('rotate2');
      return tbox.css('-webkit-transform', 'rotate(210deg)');
    }, function() {
      $(this).text('scale');
      return tbox.css('-webkit-transform', 'scaleX(0.7)');
    }, function() {
      $(this).text('skew');
      return tbox.css('-webkit-transform', 'skewX(30deg)');
    }, function() {
      $(this).text('Transform');
      return tbox.css('-webkit-transform', 'none');
    });
    $(".button#transition").toggle(function() {
      tbox.css('margin', '0 0 0 100px');
      return $(this).text('left100');
    }, function() {
      tbox.css('margin', '0 0 0 -200px');
      return $(this).text('right200');
    }, function() {
      tbox.css('margin', '0 0 0 0');
      return $(this).text('Transision');
    });
    navbox = $(".hbox");
    return $("#navibox").toggle(function() {
      return navbox.css({
        '-webkit-box-orient': 'vertical',
        'position': 'absolute',
        'top': '120px',
        'left': '30px'
      });
    }, function() {
      return navbox.css({
        '-webkit-box-orient': 'horizontal',
        'position': 'relative',
        'top': '0px',
        'left': '0px'
      });
    });
  });
}).call(this);
