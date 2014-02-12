Name: PShr
Version: 0.1
Author: Kevin Doblosky (kdoblosky@gmail.com)
Source: https://github.com/kdoblosky/PShr
Last Updated: 2014-02-12

Simple hr for command line. Inspired by https://github.com/LuRsT/hr.

Creates a horizontal line, based on any character, of however many rows you want. This can help 
to separate output when scrolling backwards through the buffer looking for results of a command.

Includes one function, Get-HorizontalLine, and an alias for it, hr.

Usage:
Dot-source this file, or include its contents in your $profile.

# Creates a single line composed of dashes
$ > hr

# Creates 4 lines, composed of carats
$ > hr ^ 4

# Or, more verbosely:
$ > Get-HorizontalLine -Character ^ -Count 4