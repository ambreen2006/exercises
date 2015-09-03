#include <iostream>
#include "pimpl_header.h"

class A::Impl
{
	public:
	std::string description()
	{
		return "I'm a pimpl demo";
	}
};

A::A()
{
	pImpl = new A::Impl();
}

A::~A()
{
	delete pImpl;
	pImpl = NULL;
}

std::string A::description()
{
	return pImpl->description();
}
 
