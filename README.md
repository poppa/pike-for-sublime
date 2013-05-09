Pike syntax bundle for Sublime Text
===================================

This is an attempt to add syntax definition, snipets and some other
functionality for Pike to [Sublime Text](http://www.sublimetext.com/).

Installation
------------

Using [Sublime Package Control](http://wbond.net/sublime_packages/package_control) (and get automatic updates):
- `ctrl+shft+p` then select `Package Control: Add Repository`
- Supply the web URL for this repository: `https://github.com/poppa/pike-for-sublime`
- `ctrl+shft+p` then select `Package Control: Install Package`
- Install `pike-for-sublime`

Alternatively, download or clone the package from [GitHub](https://github.com/poppa/pike-for-sublime)
into your `Packages/User` folder.

Contributing
------------

Sublime uses XML files for the syntax defintions but that's rather tiresome
to write. The Pike syntax definition is written in a JSON (-like) format which
then is runt through `to-tmlanguage` which creates an XML file.
(Why use AAAPackageDev when it can be done with Pike ;-)

I've added some stuff to the JSON format just to make the file easier to read.
The file is then normalized before being passed to the JSON parser.

JSON addition
----------------

  * **Comments**: The JSON file can be commented with the prefix `//-`.<br>
    NOTE! There can not be anything else but the comment on a line.
	
  * **Multiline strings**: Some regexp are seriously long which makes them
    difficult to read. A string can be split by ending the line with a 
    backslash. NOTE! Each line must be quoted though! Or you can write a real
    multiline string in the same manner as you write a regular Pike multiline
    string.

Example
---------------

    //- This is a comment to the JSON file
    //- Each comment must be standing alone on a line.
    
    { "key" : "value",
      "lng" : "A string can be split into " \
              "multiple lines by ening a line with " \
              "a backslash. Note also that no whitespace " \
              "is allowed after the backslash",
      "john" : "doe" }
      
    { "key" : "value",
      "lng" : #"This is a real multiline string
               which will preserve the 
               whitespace as well in the resulting
               XML file",
      "john" : "doe" }

Todo
----------------

Alot!

