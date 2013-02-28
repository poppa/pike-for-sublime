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

void main(int argc, array(string) argv) {
	string bar = "bar";

	for (int i=0; i < 10; i++) {
		write("i: %d" + i);
	}

	foreach ( ({}) ) {
		break;
	}

	string fnutt = "string\"foo'bar\n";
	int char = 'N'; // 78

	return;
}