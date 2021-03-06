PHP_ARG_ENABLE(gglinux,
    [Whether to enable the "gglinux" extension],
    [  enable-gglinux        Enable "gglinux" extension support])

if test $PHP_GGLINUX != "no"; then
    PHP_SUBST(GGLINUX_SHARED_LIBADD)
    PHP_NEW_EXTENSION(gglinux, gglinux.c, $ext_shared)
fi

if test -z "$PHP_DEBUG" ; then
   AC_ARG_ENABLE(debug,
           [--enable-debug compile with debugging system],
           [PHP_DEBUG=$enableval],[PHP_DEBUG=no]
   )
fi

