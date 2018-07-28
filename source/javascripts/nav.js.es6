(function() {
  const open = 'menu-open'

  var openMenu = () => {
    document.body.classList.add(open)
  }

  var closeMenu = () => {
    document.body.classList.remove(open)
  }

  var toggleMenu = e => {
    if (!e.target.matches('[data-toggle-menu]')) return
    if (document.body.classList.contains(open)) closeMenu()
    else openMenu()
  }

  document.addEventListener('click', toggleMenu)
})()
