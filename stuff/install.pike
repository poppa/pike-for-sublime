#!/usr/bin/env pike
/* -*- Mode: Pike; indent-tabs-mode: t; c-basic-offset: 2; tab-width: 8 -*- */

/* This script tries to copy the .desktop file and the icon to the proper
 * locations which in this case is ~/.local/share/applications and
 *  ~/.local/share/icons respectively
 */

int main(int argc, array(string) argv)
{
	string home = getenv ()["HOME"];
	string this_dir = dirname (__FILE__);
	string local_share = combine_path (home, ".local/share");

	string path = combine_path (local_share, "applications");
	mapping find_sublime = Process.run (({ "which", "sublime_text" }));

	if (find_sublime->exitcode != 0) {
		werror ("Unable to find sublime_text binary! You'll have to move the "
			      "files to the proper location your self!\n");
		return 1;
	}

	string exec_path = String.trim_all_whites (find_sublime->stdout);

	if (!Stdio.exist (path)) {
		if (!Stdio.mkdirhier (path)) {
			werror ("Error: \"%s\" doesn't exist and could not be created!\n");
			return 1;
		}
	}

	path = combine_path (path, "sublime-text-2.desktop");

	if (!Stdio.cp (combine_path (this_dir, "sublime-text-2.desktop.in"),
		             path)) 
	{
		werror ("Error: Unable to copy sublime-text-2.desktop.in to "
			      "destination \"%s\"", path);
		return 1;
	}

	string data = Stdio.read_file (path);
	Stdio.write_file (path, replace (data, "{exec}", exec_path));

	Process.system ("chmod +x " + path);

	path = combine_path (local_share, "icons");

	if (!Stdio.exist (path)) {
		if (!Stdio.mkdirhier (path)) {
			werror ("Error: Unable to create \"%s\"\n", path);
			return 1;
		}
	}

	path = combine_path (path, "sublime_text.png");

	if (!Stdio.cp (combine_path (this_dir, "sublime_text.png"), path)) {
		werror ("Error: Unable to copy sublime_text.png to \"%s\"", path);
		return 1;
	}

	write ("OK\n");

  return 0;
}
