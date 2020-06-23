#include <iostream>
using namespace std;

int N;
int B;
char S[110];
char D[110];

char d2c[]="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

// char to decimal
int c2d(char ch){
	if(ch <= '9') return ch - '0';
	return ch - 'A' + 10;
}

int conv(int *dst, char *src){
	int i;
	for(i = 0; src[i]; i++)
        dst[i] = c2d(src[i]);
	return i;
}

void mul(char *s, char *d){
	int S[110], D[110], sol[210] = {0};

    // change to decimal
	int slen = conv(S, s), dlen = conv(D, d), len = slen + dlen - 1, i, j;

    // multiply 
	for(i = 0; i < slen; i++){
		for(j = 0; j < dlen; j++){
			sol[i + j] += S[i] * D[j];
		}
	}

    // if value >= B, 자리수올림 발생
	for(i = len - 1; i > 0; i--){
		if(sol[i] >= B){
			sol[i - 1] += sol[i] / B;
            sol[i] %= B;
		}
	}

    // 최상위 값(sol[0]) B보다 클수 있으므로자리올림 발생 
	if(sol[0] >= B){
		cout << d2c[sol[0] / B]; sol[0] %= B;
	}

    // Change to char
	for(i = 0; i < len; i++) cout << d2c[sol[i]];
	cout << endl;
}
void solve(){
	if((S[0] == '0') || (D[0] == '0')) {
		printf("0\n"); return;
	}
	int sign = 1;
    char *s = S, *d = D;
    // checke signed, "-" 1번째부터 
	if(S[0] == '-'){ sign *= -1; s++; }
	if(D[0] == '-'){ sign *= -1; d++; }
	if(sign < 0) printf("-");
	mul(s, d);
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
