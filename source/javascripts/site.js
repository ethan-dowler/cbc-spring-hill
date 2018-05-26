(function() {
  'use strict';

  var toggle = function(e) {
    if(e.target.dataset.toggle) {
      var toggle = e.target.dataset.toggle;
      var selector = '[data-target="' + toggle + '"]';
      var target = document.querySelector(selector);
      var baseClass = target.dataset.baseClass;
      
      if(target.className.indexOf('open') > -1) {
        target.className = baseClass;
      }
      else {
        target.className += ' open';
      }
    }
  }

  document.addEventListener('click', toggle);
})()