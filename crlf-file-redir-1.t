# Test if a file is redirected to stdin in text mode by default.
# That is, a program reading redirected stdin should not see CR+LF
# but LF only unless it changes a mode of stdin to binary mode on
# purpose. In addition, it should write to stdout and stderr in binary
# mode by default.

me="$0"

# excerpt from gnulib-tool

# This program is meant for authors or maintainers which want to import
# modules from gnulib into their packages.
# Suffix of a sed expression that extracts a particular field from a
# module description.
# A field starts with a line that contains a keyword, such as 'Description',
# followed by a colon and optional whitespace. All following lines, up to
# the next field (or end of file if there is none) form the contents of the
# field.
# An absent field is equivalent to a field with empty contents.
# NOTE: Keep this in sync with sed_extract_cache_prog below!
sed_extract_prog=':[	 ]*$/ {
  :a
    n
    s/^Description:[	 ]*$//
    s/^Comment:[	 ]*$//
    s/^Status:[	 ]*$//
    s/^Notice:[	 ]*$//
    s/^Applicability:[	 ]*$//
    s/^Files:[	 ]*$//
    s/^Depends-on:[	 ]*$//
    s/^configure\.ac-early:[	 ]*$//
    s/^configure\.ac:[	 ]*$//
    s/^Makefile\.am:[	 ]*$//
    s/^Include:[	 ]*$//
    s/^Link:[	 ]*$//
    s/^License:[	 ]*$//
    s/^Maintainer:[	 ]*$//
    tb
    p
    ba
  :b
}'

sed -n -e "/^Files$sed_extract_prog" < "./$me.in" > "./$me.got"
cmp "./$me.got" "./$me.wanted"
