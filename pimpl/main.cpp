#include <iostream>
#include "pimpl_header.h"

int main(int argc, char ** argv)
{
	A a;
	std::cout << a.description() << std::endl;
	return 0;
}
