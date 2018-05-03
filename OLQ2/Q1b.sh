#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q1b.sh - change all '<th>' to '<th class="C">' on lines 50-100

## globally change <th> clause (backup to foo.htmlbkup first)
sed -ibkup '50,100 s/<th>/<th class="C">/g' foo.html

## show what has changed
diff foo.htmlbkup foo.html