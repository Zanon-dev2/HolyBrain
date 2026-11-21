U0 HB(U8* cod){
	U8* ft = CAlloc(30000);
	I64 ptr = 0;
	I64 pc = 0;
	I64 lp;
	while(cod[pc] != 0){
		switch(cod[pc]){
			case '+': ft[ptr]++; break;
			case '-': ft[ptr]--; break;
			case '>': ptr++; break;
			case '<': ptr--; break;
			case '.': "%c", ft[ptr]; break;
			case ',': ft[ptr] = GetChar; break;
			case '[':
				if(ft[ptr] == 0){
					lp = 1;
					while(lp> 0){
						pc++;
						if(cod[pc] == '[') lp++;
						else if(cod[pc] == ']') lp--;
					}
				}
				break;
			case ']':
				if(ft[ptr] != 0){
					lp = 1;
					while(lp > 0 && pc >= 0){
						pc--;
						if(cod[pc] == ']') lp++;
						else if(cod[pc] == '[') lp--;
					}
				}
				break;
		}
		pc++;
	}
	Free(ft);
}