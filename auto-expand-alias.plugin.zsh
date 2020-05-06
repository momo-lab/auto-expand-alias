__auto_expand_alias_space() {
  zle _expand_alias
  zle self-insert
}
zle -N __auto_expand_alias_space
bindkey -M emacs " " __auto_expand_alias_space
bindkey -M viins " " __auto_expand_alias_space
bindkey -M emacs "^ " magic-space
bindkey -M viins "^ " magic-space

__auto_expand_alias_enter() {
  zle _expand_alias
  zle accept-line
}
zle -N __auto_expand_alias_enter
bindkey -M emacs "^M" __auto_expand_alias_enter
bindkey -M viins "^M" __auto_expand_alias_enter
bindkey -M emacs "^x^M" accept-line
bindkey -M viins "^x^M" accept-line
