#include <iostream>
#include <vector>

using namespace std;

class Even {
public:
  Even(int _max = 100) : mMax(_max) {
    for (int i = 0; i < mMax; i+=2) {
      mEvenVect.push_back(i);
    }
  }

  friend class EvenIterator;
 
  struct EvenIterator {
    
    int mCurrent;
    vector<int> *mVectPtr;
    
    EvenIterator(int index, vector<int> *vectPtr): mCurrent(index), mVectPtr(vectPtr) {}
    bool operator != (const EvenIterator & other) {
      return mCurrent != other.mCurrent;
    }

    EvenIterator& operator++() {
      mCurrent++;
      return *this;
    }

    int& operator*() {
      return mVectPtr->operator[](mCurrent);
    }
  };
  
  EvenIterator begin() {
    return EvenIterator(0, &mEvenVect);
  }

  EvenIterator end() {
    return EvenIterator(mEvenVect.size(), nullptr);
  }

  /*  int at(int index) {
    return mVectPtr->[current];
    }*/
  
private:
  vector<int> mEvenVect;
  int mMax;
};

int main(int argc, const char* argv[]) {
  Even e;
  for (auto& even : e) {
    cout << even << " ";
  }
  cout << "\n";
  return 0;
}
