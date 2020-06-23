#include <iostream>
#include <algorithm>
#include <cstring>
#include <cmath>
using namespace std;

#define MAX_SIZE 110
int N;
int B;
char S[110];
char D[110];
int result[110];
char new_result[110];
bool isResultMinus;

int convertCharToInt(char a)
{
    if(a <= '9') return a - '0';
    return a - 'A' + 10;
}

char convertIntToChar(int a)
{
  if (a <= 9)
  {
      return a + '0';
  }
  return a + 'A' -10;
}

char changeResultToChar(int s, int d)
{
    int res = s * d;
    int start = 0;
    for (int i =0; i<MAX_SIZE; ++i)
    {
        result[i] = 50;
    }
    while (res > B)
    {
        result[start] = res%B;
        res = res/B;
        start++;
    }
    result[++start] = res;

    reverse(result, result+(sizeof(result)/sizeof(int)));
    if (isResultMinus == true)
    {
        cout << '-';
    }
    for (int i = 0; i<MAX_SIZE; ++i)
    {
        if (result[i] != 50)
        {
            cout << convertIntToChar(result[i]);
        }
    }
    cout << endl;
}

void solve()
{
    // char to decimal
    int sLen = strlen(S);
    int sSum = 0;
    bool isSMinus = false;
    int start = 0;

    for (int j=sLen-1; j>=0; --j)
    {
      if (S[j] != '-')
      {
          sSum += convertCharToInt(S[j])*pow(B, start);
          start++;
      }
      if (S[j] == '-')
      {
        isSMinus = true;
      }
    }
    bool isDMinus = false;
    int k;
    int dLen = strlen(D);
    int dSum = 0;
    start = 0;
    for (k=dLen-1; k>=0; --k)
    {
      if (D[k] != '-')
      {
          dSum += convertCharToInt(D[k])*pow(B, start);
          start++;
      }
      if (D[k] == '-')
      {
        isDMinus = true;
      }
    }
    if ((sSum != 0 && dSum != 0) &&
        ((isDMinus == true && isSMinus == false) ||
        (isDMinus == false && isSMinus == true)))
        isResultMinus = true;
    else
        isResultMinus = false;

    changeResultToChar(sSum, dSum);
}


void InputData(){
	cin >> B >> S >> D;
}
int main(){
	int i;
	scanf("%d", &N);
	for(i = 0; i < N; i++){
		InputData();
		solve();
	}
	return 0;
}
