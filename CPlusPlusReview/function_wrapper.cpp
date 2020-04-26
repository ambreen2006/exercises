#include <iostream>
#include <functional>
#include <unordered_map>

using namespace std;

struct Switch {
  
  using void_function = std::function<void(void)>;
  std::unordered_map<std::string, void_function> cases;
  
  void add_case(std::string const & key, void_function func) {
    cases[key] = func;
  }

  Switch() {}

  void operator()(std::string const & key) {
    auto f = cases.find(key);
    f = (f == cases.end()) ? cases.find("default") : f;
    if (f == cases.end()) {
      std::cout << "Case not found and default not set\n";
      return;
    }

    f->second();
  }
}; 

void test(void) {
  std::cout << "In regular method\n";
}

int main(int argc, const char *argv[]) {
  
  std::string message = "c'est la vie";

  Switch s;
  s.add_case("regular_method", test);
  s.add_case("live_your_life", [&message](void) {
                    std::cout  << message << std::endl;
                  });

  s.add_case("default", [](){
      std::cout << "Defaul switch case\n";
    });
  
  s.add_case("i_think_therefore_i_am", [msg="cogito ergo sum"]{
                    cout << msg << endl;
                  });
 
  s("live_your_life");
  s("i_think_therefore_i_am");
  s("not_existing_key");
  s("regular_method"); 
  return 0;
}
