c.editor.command = [ "urxvt", "-e", "nvim", "{}" ]
c.editor.encoding = "utf-8"
c.downloads.location.directory = "~/Téléchargements"


c.fonts.completion.entry = "12px Hack"
c.fonts.completion.category = "12px Hack"
c.fonts.debug_console = "12px Hack"
c.fonts.downloads = "12px Hack"
c.fonts.hints = "12px Hack"
c.fonts.keyhint = "12px Hack"
c.fonts.messages.info = "12px Hack"
c.fonts.messages.error = "12px Hack"
c.fonts.monospace = "Hack"
c.fonts.prompts = "12px Hack"
c.fonts.statusbar = "12px Hack"
c.fonts.tabs = "12px Hack"

c.tabs.padding = {"bottom" : 5, "top" : 5, "left" : 5, "right" : 5 }
c.tabs.last_close = "startpage"

# various shortcuts
config.bind("ec", "config-edit")
config.bind("em", 'spawn mpv {url}')
config.bind("eM", 'hint links spawn mpv {hint-url}')

c.tabs.position = "top"
c.completion.shrink = True

c.url.default_page = 'https://duckduckgo.com/'
c.url.start_pages = ["https://duckduckgo.com/"]
c.url.searchengines = {
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        'w' : 'https://www.wikipedia.org/wiki/{}',
        'gd'  : 'https://www.github.com/ducthu/{}',
        'g' : 'https://www.github.com/search?q={}',
        'y'  : 'https://www.youtube.com/results?search_query={}',
        'yh' : 'https://www.youtube.com/?_={}',
	'gi' : 'https://www.github.com/search?q={}&type=',
	"aur" : "https://aur.archlinux.org/packages/?O=0&K={}",
	"aw" : "https://wiki.archlinux.org/?search={}"
        }

c.colors.statusbar.normal.bg = 'black'
c.colors.statusbar.normal.fg = 'white'

c.messages.timeout = 3000

config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('K', 'forward')
config.bind('J', 'back')


