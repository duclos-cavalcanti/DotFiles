#______          _ _     
#| ___ \        | | |    
#| |_/ /   _  __| | |__  
#|  __/ | | |/ _` | '_ \ 
#| |  | |_| | (_| | |_) |
#\_|   \__,_|\__,_|_.__/ 
#                        

palette.update({

    "header": ("h16", "h252", "standout"),

    # {{{ variables view
    "variables": ("white", ""),
    "variable separator": ("white", ""),

    "var label": ("white", ""),
    "var value": ("white", ""),
    "focused var value": (add_setting("h16", "bold"), "h252"),
    "focused var label": (add_setting("h16", "bold"), "h252"),

    "highlighted var label": ("white", "h252"),
    "highlighted var value": ("white", "h252"),
    "focused highlighted var label": ("h16", "h252"),
    "focused highlighted var value": ("h16", "h252"),

    "return label": ("", "white"),
    "return value": ("", "white"),
    "focused return label": (add_setting("h16", "bold"), "h252"),
    "focused return value": ("h16", "h252"),
    # }}}

    # {{{ stack view
    "stack": ("white", ""),

    "frame name": ("white", ""),
    "focused frame name": (add_setting("h16", "bold"), "h252"),
    "frame class": ("white", ""),
    "focused frame class": (add_setting("h16", "bold"), "h252"),
    "frame location": ("white", ""),
    "focused frame location": (add_setting("h16", "bold"), "h252"),

    "current frame name": ("white", ""),
    "focused current frame name": (add_setting("h16", "bold"), "h252"),
    "current frame class": ("white", ""),
    "focused current frame class": (add_setting("h16", "bold"), "h252"),
    "current frame location": ("white", ""),
    "focused current frame location": (add_setting("h16", "bold"), "h252"),
    # }}}

    # {{{ breakpoint view
    "breakpoint": ("white", ""),
    "disabled breakpoint": ("", ""),
    "focused breakpoint": (add_setting("h16", "bold"), "h252"),
    "focused disabled breakpoint": (add_setting("h16", "bold"), "h252"),
    "current breakpoint": ("white", ""),
    "disabled current breakpoint": ("", ""),
    "focused current breakpoint": (add_setting("h16", "bold"), "h252"),
    "focused disabled current breakpoint": (add_setting("", "underline"), ""),
    # }}}

    # {{{ ui widgets

    "selectable": ("h16", "h252"),
    "focused selectable": ("h252", "h252"),

    "button": ("h16", "h252"),
    "focused button": ("h252", "h16"),

    "background": ("h16", "h252"),
    "hotkey": ("h16", "h252"),
    "focused sidebar": ("h16", "h252", "standout"),

    "warning": (add_setting("h16", "bold"), "h252", "standout"),

    "label": ("h16", "h252"),
    "value": ("h16", "h252"),
    "fixed value": ("h16", "h252"),
    "group head": (add_setting("h16", "bold"), "h252"),

    "search box": ("black", "h252"),
    "search not found": ("h16", "h252"),

    "dialog title": (add_setting("h16", "bold"), "h252"),

    # }}}

    # {{{ source view
    "breakpoint marker": ("h235", ""),

    "breakpoint source": (add_setting("white", "bold"), ""),
    "breakpoint focused source": (add_setting("h16", "bold"), "h252"),
    "current breakpoint source": (add_setting("white", "bold"), ""),
    "current breakpoint focused source": (add_setting("h16", "bold"), "h252"),
    # }}}

    # {{{ highlighting
    "source": ("white", ""),
    "focused source": (add_setting("h16", "bold"), "h252"),
    "highlighted source": ("white", ""),
    "current source": (add_setting("white", "bold"), ""),
    "current focused source": (add_setting("h16", "bold"), "h252"),
    "current highlighted source": (add_setting("white", "bold"), "white"),

    "line number": ("white", ""),
    "keyword": ("white", ""),

    "literal": ("white", ""),
    "string": ("white", ""),
    "doublestring": ("white", ""),
    "singlestring": ("white", ""),
    "docstring": ("white", ""),

    "name": ("white", ""),
    "punctuation": ("white", ""),
    "comment": ("white", ""),

    # }}}

    # {{{ shell
    "command line edit": ("white", ""),
    "command line prompt": (add_setting("white", "bold"), ""),

    "command line output": ("white", ""),
    "command line input": ("white", ""),
    "command line error": ("white", ""),

    "focused command line output": (add_setting("white", "bold"), ""),
    "focused command line input": ("white", ""),
    "focused command line error": ("white", ""),

    "command line clear button": ("white", ""),
    "command line focused button": ("", "white"),
    # }}}

})
