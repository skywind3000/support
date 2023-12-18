let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
command! -nargs=1 LoadScript exec 'so '.fnameescape(s:home.'/').'<args>'
command! -nargs=1 LoadPlugin exec 'set rtp+='.fnameescape(s:home.'/').'<args>'

exec 'set rtp+='.fnameescape(s:home)



