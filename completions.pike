/*
  This script generates Pike.sublime-completions
*/

// Index is the trigger, value the expansion
mapping completions = ([
  "abs"        : "abs(${1:float|int|object arg})",
  "acos"       : "acos(${1:float arg})",
  "acosh"      : "acosh(${1:float arg})",
  "basename"   : "basename(${1:string path})",
  "call_out"   : "call_out(${1:function f}, ${2:float|int delay}, ${3:mixed ... args});",
  "copy_value" : "copy_value(${1:mixed value})",
  "create"     : "void create(${1:mixed ... arg})\\n{\\n\\t${2:}\\n}",

  "error"      : "error(\\\"${1:message\\\\n}\\\", ${2:mixed ... args});",
  "stringp"    : "stringp(${1:mixed arg})",

  "write"      : "write(\\\"${1:format\\\\n}\\\", ${2:mixed ... args});",
  "werror"     : "werror(\\\"${1:format\\\\n}\\\", ${2:mixed ... args});",

  // Parser.XML.Tree
  /*
  "->get_attributes"    : "->get_attributes()${1:}",
  "->get_children"      : "->get_children()${1:}",
  "->get_first_element" : "->get_first_element()${1:}",
  "->get_full_name"     : "->get_full_name()${1:}",
  "->get_node_type"     : "->get_node_type()${1:}",
  "->get_tag_name"      : "->get_tag_name()${1:}",
  "->value_of_node"     : "->value_of_node()${1:}"
  */
]);

#if 0
mapping all_funcs = ([
  "`!":`!,
  "`!=":`!=,
  "`%":`%,
  "`&":`&,
  "`()":`(),
  "`*":`*,
  "`+":`+,
  "`-":`-,
  "`->":`->,
  "`->=":`->=,
  "`/":`/,
  "`<":`<,
  "`<<":`<<,
  "`<=":`<=,
  "`==":`==,
  "`>":`>,
  "`>=":`>=,
  "`>>":`>>,
  "`[..]":`[..],
  "`[]":`[],
  "`[]=":`[]=,
  "`^":`^,
  "`|":`|,
  "`~":`~,
  "abs":abs,
  "acos":acos,
  "acosh":acosh,
  "add_constant":add_constant,
  "add_include_path":add_include_path,
  "add_module_path":add_module_path,
  "add_program_path":add_program_path,
  "aggregate":aggregate,
  "aggregate_mapping":aggregate_mapping,
  "aggregate_multiset":aggregate_multiset,
  "alarm":alarm,
  "all_constants":all_constants,
  "all_threads":all_threads,
  "allocate":allocate,
  "array_sscanf":array_sscanf,
  "arrayp":arrayp,
  "asin":asin,
  "asinh":asinh,
  "atan":atan,
  "atan2":atan2,
  "atanh":atanh,
  "atexit":atexit,
  "backtrace":backtrace,
  "basename":basename,
  "basetype":basetype,
  "bool":bool,
  "call_function":call_function,
  "call_out":call_out,
  "call_out_info":call_out_info,
  "callablep":callablep,
  "cd":cd,
  "ceil":ceil,
  "chmod":chmod,
  "chown":chown,
  "chroot":chroot,
  "cleargroups":cleargroups,
  "closelog":closelog,
  "column":column,
  "combine_path":combine_path,
  "combine_path_amigaos":combine_path_amigaos,
  "combine_path_nt":combine_path_nt,
  "combine_path_unix":combine_path_unix,
  "compile":compile,
  "compile_file":compile_file,
  "compile_string":compile_string,
  "copy_value":copy_value,
  "cos":cos,
  "cosh":cosh,
  "cpp":cpp,
  "crypt":crypt,
  "ctime":ctime,
  "decode_value":decode_value,
  "delay":delay,
  "describe_backtrace":describe_backtrace,
  "describe_error":describe_error,
  "destruct":destruct,
  "destructedp":destructedp,
  "dirname":dirname,
  "encode_value":encode_value,
  "encode_value_canonic":encode_value_canonic,
  "enumerate":enumerate,
  "equal":equal,
  "errno":errno,
  "error":error,
  "exece":exece,
  "exit":exit,
  "exp":exp,
  "explode_path":explode_path,
  "false":false,
  "file_stat":file_stat,
  "file_truncate":file_truncate,
  "filesystem_stat":filesystem_stat,
  "filter":filter,
  "find_call_out":find_call_out,
  "floatp":floatp,
  "floor":floor,
  "fork":fork,
  "function_name":function_name,
  "function_object":function_object,
  "function_program":function_program,
  "functionp":functionp,
  "gc":gc,
  "get_active_compilation_handler":get_active_compilation_handler,
  "get_active_error_handler":get_active_error_handler,
  "get_all_groups":get_all_groups,
  "get_all_users":get_all_users,
  "get_backtrace":get_backtrace,
  "get_dir":get_dir,
  "get_groups_for_user":get_groups_for_user,
  "get_iterator":get_iterator,
  "get_weak_flag":get_weak_flag,
  "getcwd":getcwd,
  "getegid":getegid,
  "getenv":getenv,
  "geteuid":geteuid,
  "getgid":getgid,
  "getgrgid":getgrgid,
  "getgrnam":getgrnam,
  "getgroups":getgroups,
  "gethostbyaddr":gethostbyaddr,
  "gethostbyname":gethostbyname,
  "gethostname":gethostname,
  "gethrtime":gethrtime,
  "gethrvtime":gethrvtime,
  "getpgrp":getpgrp,
  "getpid":getpid,
  "getppid":getppid,
  "getpwnam":getpwnam,
  "getpwuid":getpwuid,
  "getsid":getsid,
  "getuid":getuid,
  "getxattr":getxattr,
  "glob":glob,
  "gmtime":gmtime,
  "hardlink":hardlink,
  "has_index":has_index,
  "has_prefix":has_prefix,
  "has_suffix":has_suffix,
  "has_value":has_value,
  "hash":hash,
  "hash_value":hash_value,
  "indices":indices,
  "initgroups":initgroups,
  "innetgr":innetgr,
  "int2char":int2char,
  "int2hex":int2hex,
  "intp":intp,
  "is_absolute_path":is_absolute_path,
  "kill":kill,
  "limit":limit,
  "listxattr":listxattr,
  "load_module":load_module,
  "localtime":localtime,
  "log":log,
  "lower_case":lower_case,
  "m_delete":m_delete,
  "map":map,
  "mappingp":mappingp,
  "master":master,
  "max":max,
  "min":min,
  "mkdir":mkdir,
  "mkmapping":mkmapping,
  "mkmultiset":mkmultiset,
  "mktime":mktime,
  "multisetp":multisetp,
  "mv":mv,
  "next_object":next_object,
  "normalize_path":normalize_path,
  "object_program":object_program,
  "object_variablep":object_variablep,
  "objectp":objectp,
  "openlog":openlog,
  "pow":pow,
  "programp":programp,
  "putenv":putenv,
  "query_num_arg":query_num_arg,
  "random":random,
  "random_seed":random_seed,
  "random_string":random_string,
  "readlink":readlink,
  "remove_call_out":remove_call_out,
  "remove_include_path":remove_include_path,
  "remove_module_path":remove_module_path,
  "remove_program_path":remove_program_path,
  "removexattr":removexattr,
  "replace":replace,
  "replace_master":replace_master,
  "resolvepath":resolvepath,
  "reverse":reverse,
  "rm":rm,
  "round":round,
  "rows":rows,
  "search":search,
  "set_priority":set_priority,
  "set_weak_flag":set_weak_flag,
  "setegid":setegid,
  "seteuid":seteuid,
  "setgid":setgid,
  "setgroups":setgroups,
  "setpgrp":setpgrp,
  "setresgid":setresgid,
  "setresuid":setresuid,
  "setsid":setsid,
  "setuid":setuid,
  "setxattr":setxattr,
  "sgn":sgn,
  "signal":signal,
  "signame":signame,
  "signum":signum,
  "sin":sin,
  "sinh":sinh,
  "sizeof":sizeof,
  "sleep":sleep,
  "sort":sort,
  "sprintf":sprintf,
  "sprintf_args":sprintf_args,
  "sprintf_format":sprintf_format,
  "sqrt":sqrt,
  "strerror":strerror,
  "strict_sprintf_format":strict_sprintf_format,
  "string_to_unicode":string_to_unicode,
  "string_to_utf8":string_to_utf8,
  "stringp":stringp,
  "strlen":strlen,
  "symlink":symlink,
  "syslog":syslog,
  "tan":tan,
  "tanh":tanh,
  "this_object":this_object,
  "this_thread":this_thread,
  "thread_create":thread_create,
  "thread_local":thread_local,
  "throw":throw,
  "time":time,
  "trace":trace,
  "true":true,
  "ualarm":ualarm,
  "umask":umask,
  "uname":uname,
  "undefinedp":undefinedp,
  "unicode_to_string":unicode_to_string,
  "upper_case":upper_case,
  "utf8_to_string":utf8_to_string,
  "utime":utime,
  "values":values,
  "version":version,
  "werror":werror,
  "write":write,
  "zero_type":zero_type
]);
#endif

int main(int argc, array(string) argv)
{
#if 0
  object m = master ();

  foreach (indices (all_funcs), string fn) {

    if (!functionp (all_funcs[fn])) {
      write ("%s is not a function\n", fn);
      continue;
    }

    object doc;


    if (mixed e = catch (doc = m->show_doc (all_funcs[fn])))
      write ("Error resolving: %s\n", fn);
    else {
      if (doc) {
        write("%s: %O\n", fn, doc);
      }
      else {
        mixed e = catch {
          all_funcs[fn]();
        };

        if (e) {
          write ("Err: %s\n", describe_error (e));
        }
      }
    }
  }

  return 0;
#endif

  array(string) buf = ({});

  foreach (sort (indices (completions)), string k) {
    buf += ({ sprintf ("    {\"trigger\":\"%s\",\"contents\":\"%s\"}", k, completions[k]) });
  }

  string macro = #"{
  \"scope\": \"source.pike - variable.other.pike\",
  \"completions\":
  [
    \"pike\",
%s
  ]
}";

  Stdio.write_file ("Pike.sublime-completions", sprintf (macro, buf*",\n"));

  return 0;
}
