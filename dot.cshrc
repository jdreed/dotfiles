# Prototype user .cshrc file
#
# $Id: dot.cshrc,v 1.15 1999-06-03 14:52:55 danw Exp $

# This file sources a system-wide cshrc file, which:
#      - sets up standard environment variables
#      - sources user file ~/.environment, if it exists
#      - sets standard path
#      - sets up standard C shell variables, aliases, etc.
#      - source user file ~/.cshrc.mine, if it exists

set initdir=/usr/athena/lib/init

if (-r $initdir/cshrc) then
        source $initdir/cshrc
else
	if ($?prompt) then		# Don't echo if noninteractive
	  echo "Warning: System-wide initialization files not found."
	  echo "C Shell initialization has not been performed."
	  stty sane
	endif
endif


# If you want to ADJUST the C shell initialization sequence, create any of 
# the following files (as appropriate) in your home directory, with commands
# to achieve the effect listed:
#
#      .environment - set up session environment (set environmental
#                     variables, attach lockers, etc.)
#      .cshrc.mine  - set up C shell environment (set shell variables,
#                     aliases, unset system defaults, etc.)

# In most cases, you will never need to edit this file.  All the 
# customizations you could want to make can be made by editing one
# of the user dotfiles, such as ~/.cshrc.mine, ~/.environment, 
# ~/.startup.tty or ~/.startup.X
#
# WARNING: If you revise this .cshrc file, you will not automatically
# get any changes that Athena may make to the system-wide file at a
# later date. Be sure you know what you are doing.
