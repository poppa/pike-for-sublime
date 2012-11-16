Pike syntax definition for Sublime
==================================

This is an attempt to create a Pike syntax definition for the Sublime
text editor (http://www.sublimetext.com/).

Sublime uses XML files for the syntax defintions but that's rather tiresome
to write. The Pike syntax definition is written in a JSON (-like) format which
then is runt through `to-tmlanguage` which creates an XML file.

I've added some stuff to the JSON format just to make the file easier to read.
The file is then normalized before being passed to the JSON parser.

JSON addition
----------------

  * **Comments**: The JSON file can be commented with the prefix `//-`.<br>
    NOTE! There can not be anything else but the comment on a line.
	
  * **Multiline strings**: Some regexp are seriously long which makes them
    difficult to read. A string can be split by ending the line with a 
    backslash. NOTE! Each line must be quoted though!

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
      
Todo
----------------

Alot!

