" Setup for Javascript
	setlocal makeprg=NODE_DISABLE_COLORS=1\ nodelint\ %
	"setlocal errorformat=%A%f\,\ line\ %l\,\ character\ %c:\ %m.%Z%.%#,%-G%.%#
	setlocal ts=2 sts=2 sw=2 noet
	let &l:efm='%A'
	let &l:efm.='%f\, '
	let &l:efm.='line %l\, '
	let &l:efm.='character %c:'
	let &l:efm.='%m' . ','
	let &l:efm.='%Z%.%#' . ','
	let &l:efm.='%-G%.%#'
