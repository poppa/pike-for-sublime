#!/usr/bin/env pike
// comment

import Parser.XML.Tree;

string multi = #"multi1
multi2";

#ifndef TEST
# define tag(TYPE,VAL) add(tag1(TYPE), rep((VAL)), tag2(TYPE))
#else
# define tag(TYPE,VAL) 0
#endif

#line 9
#10

#pike 7.8

constant my_line = __LINE__;
constant compile_time = __DATE__ "T" __TIME__;

#if 1
string apa = "mixed";

int do_some_stuff ()
{
	for (int i; i < 10; i++)
		write ("i: %d\n", i);
}
#else
int do_some_stuff ();
#endif

#if constant(DEBUG)
constant DO_DEBUG = 1;
#else
constant DO_DEBUG = 0;
#endif

#define DEBUG
/* block comment
 * with a " double "fnutt"
 * and a * (star)
 */

#if 0
#error
#endif

#if 1
// hello
#endif

#ifdef TEST
# ifdef TWO
  array one = ({ 1 });
# else
  array one = ({ 1.0 });
# endif
#elif defined(TEST_2)
array one = ({ "uno"});
#else
array one = ({ "ett" });
#endif


enum MyStuff {
	ONE = 1,
	TWO,
	THREE,
	N_STUFF
}

#define roxen roxenp() // Missing semicolon affecting next statement
void some_prototype(multiset m,         mapping m2,             array a, string s, float f, int i);

void another_prototype(multiset(int) m, mapping(string:int) m2, array a, string s, float f, int i);
array(array(int)) diff_compare_table(array a, array b);

void|int(0..1) löksoppa (multiset lök, int soppa);

class SöndagsStek {}

array(SöndagsStek) get_roast ()
{
	return ({ SöndagsStek() });
}

class classFoo
{
	inherit SöndagsStek;

	static mapping m4 = ([]);

	local mixed `foo() { return UNDEFINED; }

	mixed `[](string|int index) { // Some functions have special names (operator function)
		return m4[index];
	}

	mixed `()(function fun) {     // Now the parantheses are geting tricky...
	}
	mixed `->(string key) {
	}
	mixed `=(object other) {
	}
	mixed `!=(object other) {
	}
	mixed `%(){
	}
	mixed `+(){
		::`+();
		odd(UNDEFINED);
	}
	mixed `*(){
	}
	mixed `-(){
	}
	mixed `<(){
	}
	mixed `/(){
	}
	mixed `~(){
	}
	mixed `&(){
	}
	mixed `|(){
	}
	mixed `^(){
	}
	mixed `[..](){
	}

	int(0..1) odd(mixed in) { // Hm, doens't work correctly as class method
		catch { return in % 2; };
	}

	mixed even(array(mapping) a, int(0..1) b) {

	}

	array(SöndagsStek) get_array_of_steak() {
		return ({ SöndagsStek() });
	}

	SöndagsStek get_steak()
	{
		return SöndagsStek();
	}

	string|int one() { return "1"||1; };

	object _this = this;
	program _this_program = this_program;
}

constant animal = (program)"to-tmlanguage";

//! Lets add a docblock here and see if we eventually will
//! parse doc comments. Ref an argument @[argc] and say that it needs to be
//! something like @tt{1@}.
//!
//! @decl void main(int argc, array(string) argv)
//!
//! @link http://pike.lysator.liu.se
//!
//! @param argc
//!  Number of arguments passed to the method
//!
//! @param argv
//!  Array of actual arguments
//!
//! @returns
//!  Absoluteley nothing
//!
//! @mapping
//!  @member int "depth"
//!  @member mapping "map"
//! @endmapping
//!
//! @note
//!  to self! Don't do anything stupid!
//!
//! @example
//!  Yepp!
//!
//! @pre{
//!	 Well, well, not quite there yet
//!  so to speak!
//! @}

void main(int argc, array(string) argv) {
	// data types
	int one = 1;
	int minus = -1;
	int(0..1) bool = true;
	int hex = 0x4e;
	int binary = 0b1001110;
	int octal = 0116;
	int char = 'N';
	float pi = 3.14;
	float percent = .01;
	float permille = 001e-3;
	string bar = "bar";
	string foo ="foo";
	array(mixed) arr;
	//foo(mixed) invalid; // Spot the function call
	mixed mix = (< 1, "2", hex >);
	program p = compile_string("mixed _inline = \"ok\";");

	function function_call = lambda(mixed ... args) {
		return args;
	};

	function_call("string",
	              function_call("string"),
	              "string",
	              1,
	              #string "README.md"  // This is a preprocessor thingy
	              );

	for (int i=0; i < 10; i++) {
		write("i: %d\n", i);
	}

	string foob ="string";

	foreach (({}), mixed a) {
		break;
	}

	function f = lambda(int i, string s) {
		string bar = "";
		return;
	};

	string format_string = sprintf("%d monkeys in a %2s %[0]d\n", 12, "tree");
	string fnutt = "string\"foo'bar\n";
	int charN = 'N'; // 78

	string hash = "foo#"+ 2 + #"newline
	in this string";

	string back_and_fnutt = "\\\"string";
	string text =
		"\\back\\"+"\\"
		"tab:\t"
		"backspace:\b"
		"null:\0"
		"also null:\000"
		"Hello world"
		"Hello \x77orld"
		"Hello \u0077orld"
		"Hello \U00000077orld"
		"Hello \167orld"
		"Hello \d119orld"
		"Hello \world"
		// Only a few functions treat strings as format strings, and they have
		// different features
		"90% correct %*ö %{%d%} "
		"but %*s works"
		"90%% is %d% so to speak"
		;

	return;
}
