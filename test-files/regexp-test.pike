#!/usr/bin/env pike
/* -*- Mode: Pike; indent-tabs-mode: s; c-basic-offset: 2; tab-width: 2 -*- */
/*
  Author: Pontus Östlund <https://profiles.google.com/poppanator>

  Permission to copy, modify, and distribute this source for any legal
  purpose granted as long as my name is still attached to it. More
  specifically, the GPL, LGPL and MPL licenses apply to this software.
*/

int main(int argc, array(string) argv)
{
  Regexp.PCRE.Widestring reg;
  reg = Regexp.PCRE.Widestring(#"(?x)
        (?:
          ^                                                      # begin-of-line
          |
          (?:
            (?= \\s )
            (?<!else|return|array)
            (?<=\\w)                               # or word + space before name
            |
            (?= \\s*[[:alnum:]_.])
            (?<=[.|\\(\\)])                       # or type modifier before name
          )
        )
        (\\s*)
        (?!
          (while|for|do|if|else|switch|catch|return|foreach|
           object|int|float|function|mapping|array|multiset|
           lambda|program|mixed|class)\\s*\\(
        )
        (
          (?:
            `\\(\\)
            |
            `[-<.>^|&*~/+%=!\\[\\]]+
            |
            `[[:alpha:]_][[:alnum:]_]*+
            |
            [[:alpha:]_][[:alnum:]_]*+
          )++                                                      # actual name
        )
        \\s*
        (?=\\()"
  );

  string func = #"


  ";


  werror("Reg: %O\n", reg);

  return 0;
}
