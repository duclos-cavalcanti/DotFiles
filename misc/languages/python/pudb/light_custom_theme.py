#______          _ _     
#| ___ \        | | |    
#| |_/ /   _  __| | |__  
#|  __/ | | |/ _` | '_ \ 
#| |  | |_| | (_| | |_) |
#\_|   \__,_|\__,_|_.__/ 
#                        

palette.update({

    "header": ("white", "", "standout"),

    # {{{ variables view
    "variables": ("h16", "white"),
    "variable separator": ("h16", "white"),

    "var label": ("h16", "white"),
    "var value": ("h16", "white"),
    "focused var value": (add_setting("h16", "bold"), "h252"),
    "focused var label": (add_setting("h16", "bold"), "h252"),

    "highlighted var label": ("h16", "h252"),
    "highlighted var value": ("h16", "h252"),
    "focused highlighted var label": ("h16", "h252"),
    "focused highlighted var value": ("h16", "h252"),

    "return label": ("white", ""),
    "return value": ("white", ""),
    "focused return label": (add_setting("h16", "bold"), "h252"),
    "focused return value": ("h16", "h252"),
    # }}}

    # {{{ stack view
    "stack": ("h16", "white"),

    "frame name": ("h16", "white"),
    "focused frame name": (add_setting("h16", "bold"), "h252"),
    "frame class": ("h16", "white"),
    "focused frame class": (add_setting("h16", "bold"), "h252"),
    "frame location": ("h16", "white"),
    "focused frame location": (add_setting("h16", "bold"), "h252"),

    "current frame name": ("h16", "white"),
    "focused current frame name": (add_setting("h16", "bold"), "h252"),
    "current frame class": ("h16", "white"),
    "focused current frame class": (add_setting("h16", "bold"), "h252"),
    "current frame location": ("h16", "white"),
    "focused current frame location": (add_setting("h16", "bold"), "h252"),
    # }}}

    # {{{ breakpoint view
    "breakpoint": ("h16", "white"),
    "disabled breakpoint": ("white", "white"),
    "focused breakpoint": (add_setting("h16", "bold"), "h252"),
    "focused disabled breakpoint": (add_setting("h16", "bold"), "h252"),
    "current breakpoint": ("h16", "white"),
    "disabled current breakpoint": ("white", "white"),
    "focused current breakpoint": (add_setting("h16", "bold"), "h252"),
    "focused disabled current breakpoint": (add_setting("white", "underline"), "white"),
    # }}}

    # {{{ ui widgets

    "selectable": ("white", ""),
    "focused selectable": ("h16", "white"),

    "button": ("white", ""),
    "focused button": ("h16", "white"),

    "background": ("white", ""),
    "hotkey": ("white", ""),
    "focused sidebar": ("white", "", "standout"),

    "warning": (add_setting("white", "bold"), "", "standout"),

    "label": ("white", ""),
    "value": ("white", ""),
    "fixed value": ("white", ""),
    "group head": (add_setting("white", "bold"), ""),

    "search box": ("black", "white"),
    "search not found": ("white", ""),

    "dialog title": (add_setting("white", "bold"), ""),

    # }}}

    # {{{ source view
    "breakpoint marker": ("white", "white"),

    "breakpoint source": (add_setting("h16", "bold"), "h252"),
    "breakpoint focused source": (add_setting("white", "bold"), "h252"),
    "current breakpoint source": (add_setting("h16", "bold"), "h252"),
    "current breakpoint focused source": (add_setting("white", "bold"), "h252"),
    # }}}

    # {{{ highlighting
    "source": ("h16", "white"),
    "focused source": (add_setting("h16", "bold"), "h252"),
    "highlighted source": ("h16", "white"),
    "current source": (add_setting("h16", "bold"), "white"),
    "current focused source": (add_setting("h16", "bold"), "h252"),
    "current highlighted source": (add_setting("h16", "bold"), ""),

    "line number": ("h16", "white"),
    "keyword": ("h16", "white"),

    "literal": ("h16", "white"),
    "string": ("h16", "white"),
    "doublestring": ("h16", "white"),
    "singlestring": ("h16", "white"),
    "docstring": ("h16", "white"),

    "name": ("h16", "white"),
    "punctuation": ("h16", "white"),
    "comment": ("h16", "white"),

    # }}}

    # {{{ shell
    "command line edit": ("white", ""),
    "command line prompt": (add_setting("white", "bold"), ""),

    "command line output": ("h16", "white"),
    "command line input": ("h16", "white"),
    "command line error": ("h16", "white"),

    "focused command line output": (add_setting("h16", "bold"), "white"),
    "focused command line input": ("h16", "white"),
    "focused command line error": ("h16", "white"),

    "command line clear button": ("white", ""),
    "command line focused button": ("white", ""),
    # }}}

})
