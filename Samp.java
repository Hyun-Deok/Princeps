package ch4;

class Samp {
	int id;
	public Samp(int x) {this.id = x;}
	public Samp() {
		this(0);
		System.out.println("������ ȣ��");
	}
	public static void main(String[] args) {
		new Samp();
	}
}
