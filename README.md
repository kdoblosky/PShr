Name: PShr

Version: 0.1

Author: Kevin Doblosky (kdoblosky@gmail.com)

Source: https://github.com/kdoblosky/PShr

Last Updated: 2014-02-12

Simple hr for command line. Inspired by https://github.com/LuRsT/hr.

Creates a horizontal line, based on any input string, of however many rows you want. This can help 
to separate output when scrolling backwards through the buffer looking for results of a command.

Includes one function, Get-HorizontalLine, and an alias for it, hr.

Usage:

Dot-source this file, or include its contents in your $profile.

Create a single line composed of dashes:

$ > hr


Create 4 lines, composed of carats:

$ > hr ^ 4

Or, more verbosely:

$ > Get-HorizontalLine -InputString ^ -Count 4

Create line based on "BREAK":

$ > hr BREAK

Create line with background color Black, and foreground color Green:

$ > hr -bg Black -fg Green

Or, more verobsely:

$ > Get-HorizontalLine -BackColor Black -ForeColor Green

(On my system, I changed the default colors to Black and Green, as above, but 
left the defaults as $null in the published script)