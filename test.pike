// comment
string foo = "bar";
string multi = #"multi1
multi2";

#define DEBUG
/* block comment
 * with a " double "fnutt"
 * and a * (star)
 */

#if 0
#error
#endif

some_prototype(multiset m,         mapping m2,             array a, string s, float f, int i);
another_prototype(multiset(int) m, mapping(string:int) m2, array a, string s, float f, int i);

void main(int argc, array(string) argv) {
	string bar = "bar";
	string foo ="foo";

	function_call("string", other("string"), "string", 1);

	for (int i=0; i < 10; i++) {
		write("i: %d" + i);
	}

	string foo ="string";

	foreach ( ({}) ) {
		break;
	}

	function f = lambda(int i, string s) {
		string bar = "";
		return;
	}

	string fnutt = "string\"foo'bar\n";
	int char = 'N'; // 78

	string hash = "foo#"+ 2 + #"newline
	in this string";

	return;
}
