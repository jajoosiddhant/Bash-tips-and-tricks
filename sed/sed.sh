#!/bin/bash
# This file consistes of how sed can be used in bash scripts

cd `dirname ${0}`
filename=testfile

CHANGE="Text replacement using variable"

# These are some examples of how sed can be used. 
# Use the ${filename} file to add some text and try out your won sed scenario and various sed commands.
# Please check the readme of various sed commands documented and if you find something missing, 
# reach out with a use case example, so that this can be added for future use.
sed -i "s/^REPOSITORY=.*$/REPOSITORY=Text replacement successful/" ${filename}
sed -i "s/^DESCRIPTION=.*$/DESCRIPTION=${CHANGE}/g" ${filename}


# Adding g at the end to make the command:
# sed -i "s/hello/bye/g" ${filename}
# will replace all occurences of hello in a line.
sed -i "s/hello/bye/" ${filename}               # This will just replace the first occurence in a line.

# Example of how \b<pattern>\b works
sed -i "s/\bplant\b/do not cut/" ${filename}

# USE of * and .*
# This will replace only git in a line.
sed -i "s/git*/git is awesome /" ${filename}
# This will replace the entire line containing git.
sed -i "s/classroom.*/github classroom is cool/" ${filename}


# Replace a string on a specific line
# If multiple lines need to be checked, add the line numbers separated by a comma: 
# sed '4,5,6 s/examples/cases/' ${filename}
# By default if no line number specified, sed checks all the lines 
sed -i '4 s/examples/cases/' ${filename}