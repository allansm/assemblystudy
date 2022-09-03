#include <stdio.h>

extern "C"{
	void hello(){
		printf("\nhelloworld");
	}

	void showNumber(int x){
		printf("%i",x);
	}

	void lnprintln(const char* txt){
		printf("\n%s\n",txt);
	}
};
