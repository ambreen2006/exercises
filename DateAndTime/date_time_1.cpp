#include <iostream>
#include <chrono>
#include <ctime>
#include <iomanip>

using namespace std;

int main(int argc, const char *argv[]) {

  auto current = chrono::system_clock::now();
  auto now_timet = chrono::system_clock::to_time_t(current);
  auto now_local = localtime(&now_timet);

  cout << "Local Time " << put_time(now_local, "%c") << endl;
  cout << "As time_t " << now_timet << endl;

  auto midnight_local = now_local;
  midnight_local->tm_hour = 0, midnight_local->tm_min = 0; midnight_local->tm_sec = 0;
  auto midnight_timet = mktime(midnight_local);
  cout << "As time_t " << midnight_timet << endl;

  auto midnight = chrono::system_clock::from_time_t(midnight_timet);
  auto midnight_timet_back = chrono::system_clock::to_time_t(midnight);
  cout << "Midnight " << put_time(localtime(&midnight_timet_back), "%c") << endl;

  auto diff_mins = std::chrono::duration_cast<std::chrono::minutes>(current - midnight);
  auto diff_hrs = std::chrono::duration_cast<std::chrono::hours>(current - midnight);
  cout << "Minutes passed since midnight " << diff_mins.count()  << endl;
  cout << "Hours passed since midnight " << diff_hrs.count()  << endl;  
}
