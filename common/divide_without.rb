
def divide(int1, int2)
	if b == 0
		RaiseExpection.new
	elsif 
			
end


public static int divide(int a, int b) {
    if (b == 0)
        throw new IllegalArgumentException("Argument 'b' is 0");
    int sign = 1;
    if (a < 0) {
        a = -a;
        sign = -sign;
    }
    if (b < 0) {
        b = -b;
        sign = -sign;
    }
    int result = 0;
    while (a >= 0) {
        a -= b;
        result++;
    }
    return (result - 1) * sign;
}