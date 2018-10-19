;(function() {
  const open = 'menu-open',
    dataToggle = '[data-toggle-menu]'

  var openMenu = () => {
    document.body.classList.add(open)
  }

  var closeMenu = () => {
    document.body.classList.remove(open)
  }

  var toggleMenu = e => {
    if (
      !e.target.matches(dataToggle) &&
      !e.target.parentElement.matches(dataToggle)
    )
      return
    if (document.body.classList.contains(open)) closeMenu()
    else openMenu()
  }

  document.addEventListener('click', toggleMenu)
})()
