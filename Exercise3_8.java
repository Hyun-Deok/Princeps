package ch3;

public class Exercise3_8 {

	public static void main(String[] args) {
		String s = "123";
		try {
			int n = Integer.parseInt(s);
			n++;
			System.out.println(n);
		}
		catch(NumberFormatException e){
			System.out.println(s + "�� ������ ��ȯ�� �� �����ϴ�.");
		}
		finally {
			System.out.println("����� �����ϴ�.");
		}
	}

}
