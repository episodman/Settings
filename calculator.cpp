#include <iostream>
#include <string.h>
using namespace std;

#define M 110
int N;//�׽�Ʈ ���̽� ��
int B;//����
char S[110];//ù ��° ����
char D[110];//�� ��° ����

//char ca[110];
std::vector<char> ca;


void InputData(){
	cin >> B >> S >> D;
}

int convertCharToInt(char a)
{
  if (a > 9)
  {
    a = a - 'A' + 10;
  }
  return a;
}

char convertIntToChar(int a)
{
  if (a > 9)
  {
    a =  a + 'A' -10;
  }
  return (char) a;
}

// 2�� ����
int calculate(int nSum, bool isMinus)
{
  int bin = 0;
  int i = 0;
  if (isMinus)
  {
    bin = 1 << 1; // start 10
    // make bin
    while (nSum/2 < 2)
    {
      bin += nSum%2<<i;
      nSum = nSum/2;
    }
  }
  else
  {
    while (nSum/2 < 2)
    {
      bin += nSum%2<<i;
      nSum = nSum/2;
    }
  }
  return !bin;
}

char compliments(int total)
{
  if (total/B < B) 
    return ca.push_back(convertIntToChar(total/B));
  else 
    return compliments(total/B);
}


int main(){
  // 1. n ���� -> 10 -> 2 ����
  // ���� ���� ���- ó��

  // 2 -> dec -> n ����?
  // ���� �� ó��
  // A, B, C, D ...ó�� (x = x - 'A' + 10) however char?
 

	int i;
	scanf("%d", &N);
	for(i = 0; i < N; i++){
		InputData();//�Է� �Լ�
    //	�ڵ带 �ۼ��ϼ���
    // S makes Deci
    int j;
    int sLen = strlen(S);
    int sSum = 0;
    bool isMinus = false;

    for (j=sLen; j>=0; --j)
    {
      cout << S[j] << endl;
      sSum += convertCharToInt(s[j])*B^j;
      if (S[j] == "-")
      {
        isMinus = true;
      }
    }
    sBinSum = calculate(sSum, isMinus);

    isMinus = false;
    int k;
    int dLen = strlen(D);
    int dSum = 0;
    for (k=dLen; k>=0; --k)
    {
      cout << D[k] << endl;
      dSui += convertCharToInt(D[k])*B^k;
      if (D[k] == "-")
      {
        isMinus = true;
      }
    }

    dBinSum = calculate(dSum, isMinus);
    int totalBin = sBinSum*dBinSum;
    

	}
	return 0;
}
