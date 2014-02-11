#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([link-osx-framework-headers], [1.0], [enrico.m.crisostomo@gmail.com])
AM_INIT_AUTOMAKE([-Wall -Werror gnu])
AC_COPYRIGHT([2014 (C) Enrico M. Crisostomo])
AC_REVISION([$Revision: 1.0.0-1 $])
AC_CONFIG_FILES([Makefile])

# Checks for programs.
# Shell scripts distributed by this package are ZSH-specific.
AC_CHECK_PROG([HAVE_ZSH], [zsh], [yes])
if test x"${HAVE_ZSH}" != x"yes" ; then
  AC_MSG_ERROR([Please install the zsh shell.])
fi

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_OUTPUT
