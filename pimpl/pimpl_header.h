/**  pimpl_header.h
  *	 author: ambreen2006@gmail.com
  *  Based on book from API Design for C++, slight changes in methods and names	
 **/

class A
{
	public:
		A();
	   ~A();
		std::string description();
		class Impl;
	private:
		A(const A&);
		const A &operator=(const A&);
		Impl *pImpl;
};

