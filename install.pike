/*
	Pike
*/

#define LOCAL(X...) combine_path(__DIR__, X)
#define EXTERN(X...) combine_path(config_path, X)
#define COPY(A) Stdio.cp(LOCAL(A), EXTERN(A))

int main(int argc, array(string) argv)
{
  string config_path = combine_path(getenv("HOME"),
                        ".config/sublime-text-2/Packages/User/Pike");

  COPY("Pike.tmLanguage");
  COPY("Pike.sublime-completions");
  //rm(EXTERN("Completion Rules.tmPreferences.cache"));
  //rm(EXTERN("Pike.tmLanguage.cache"));

  foreach (get_dir(LOCAL("snippets")), string file) {
    werror("File: %s\n", LOCAL("snippets", file));
    Stdio.cp(LOCAL("snippets", file), EXTERN("snippets", file));
  }

	return 0;
}