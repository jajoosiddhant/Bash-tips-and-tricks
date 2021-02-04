# SED Usage information
  
This readme.md lists the information about `sed` used in the bash script files of this directory.

**NOTE:** The `sed` evaluates each line spearately with the given command in the script. So look at `sed` as executing 10 times on a file consisting of 10 lines i.e executing each line of the file seapartely with the specified `sed` command.

- The `/` act as delimiters in `sed` command.
- The `-i` flag edits the same file. If no `-i` flag is specified, it displays the changes on the terminal and does not save write the changes.
- The `s/` is a specifier to follow with the string to be matched. eg: s/REPOSITORY/ in the [sed.sh](sed.sh) example.  
- The `g` flag at the end replaces all the matched string occurences in a line. If `g` flag is not specified, it simply replaces the first occurence. See the `hello world` example in [sed.sh](sed.sh).
- The `^` if used in `s/^` specifies that the pattern to be matched is at the start of the line and not in the middle of a line.  
- The `*` is a wildcard to match any pattern if it has been included in `<pattern>`.  
    Note: The asterisk (*) means "zero or more of the pattern"  
- The `.` is a wildcard to match a single character zero or more times.  
    For example: `ca.` will match `cat`, `car` etc. in the entire line.
- The `.*` is a wildcard will match all the characters. The `.` matches any character, followed by `*` which matches all the different combinations.  
    For example: `ca.*` will match the entire line.
- The `$` if used in `s/^<pattern>$` signifies the end of the line. This will make sure that the pattern to be matched is the starting of a line and ends with the pattern itself. If a wildcard is inserted in the pattern, the `$` at the end is kind of redundant.  
    For Example: for `s/^<pattern.*$>`, the `$` here is redundant since `.*` is anyways gonna match till the end of the line.  
- The `\b<pattern>\b` makes sure that the <pattern> is a word and not a part of the word.  
    For example: the use of `\bworld\b` will match "This world is beautiful" but will not match "helloworld".    
  
  
# References  
- https://linux.die.net/man/1/sed  
- https://stackoverflow.com/a/18342726/14225230  
- https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/#:~:text=SED%20command%20in%20UNIX%20is,or%20for%20find%20and%20replace.  
- http://sed.sourceforge.net/local/docs/An_introduction_to_sed.html



