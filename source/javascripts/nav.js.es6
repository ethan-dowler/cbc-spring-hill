;(function() {
  const open = 'menu-open',
    dataToggle = '[data-toggle-menu]',
    navClass = '.Nav'

  var openMenu = () => {
    document.body.classList.add(open)
  }

  var closeMenu = () => {
    document.body.classList.remove(open)
  }

  var toggleMenu = e => {
    // if the menu is open and the user clicks anything other than the Menu
    if (document.body.classList.contains(open) && !e.target.matches(navClass))
      closeMenu()
    // if the user clicks a menu toggle (or the parent of a menu toggle)
    else if (
      e.target.matches(dataToggle) ||
      e.target.parentElement.matches(dataToggle)
    )
      openMenu()
  }

  document.addEventListener('click', toggleMenu)
})()
