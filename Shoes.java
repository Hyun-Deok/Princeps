package ch4;

public class Shoes {
	int size;
	String color;
	String name;
	int price;

	public Shoes() {
		size = 265; name = "";
	}
	
	public Shoes(String a, int b) {
		name = a; price = b;
	}
	
	public void protect(){
		System.out.println("���� ��ȣ�Ѵ�.");
	}
	
	public static void main(String[] args) {
		Shoes A = new Shoes();
		A.size = 270;
		A.color = "black";
		A.name = "teva";
		A.price = 69000;
		A.protect();
		System.out.println("�Ź��̸� : " + A.name + "\n" + "�Ź߰��� : " + A.price + "\n" + "�Ź�ũ�� : " + A.size);
		System.out.println(new Shoes("ab",30000));
		System.out.println(new Shoes());
	}
}
