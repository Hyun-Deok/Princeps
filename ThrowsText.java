package ch3;
// ���ܰ� �߻��� �޼ҵ� > ȣ���� �޼ҵ� > main()�޼ҵ� > �ڹٰ���ӽ� => ������. 'throw'
public class ThrowsText{
	
	public int divide(int x, int y) throws ArithmeticException{
		int result;
		try {
		result = x/y;    // 0���� ������ ���ܰ� �߻�
		}catch(ArithmeticException e) {
			throw(e);
		}
		return result;
	}
	public static void main(String[] args) {
		ThrowsText x = new ThrowsText();
		for(int i=5; i>=0; i--) {
			int divide100 = x.divide(100, i);
			System.out.println("100�� " + i + "������ : " + divide100);
		}
	}
}
