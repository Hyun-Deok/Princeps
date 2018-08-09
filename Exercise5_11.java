package ch5;
abstract class Shape1{
	public void paint() {draw();}
	abstract public void draw();
}
public class Exercise5_11 extends Shape1 {
	private int radius;
	public Exercise5_11(int radius) {this.radius = radius;}
	double getArea() { return 3.14*radius*radius; }
	
	@Override
	public void draw() {System.out.println("������ = " + radius);};
	
	public static void main(String[] args) {
		// Shape s = new Shape();      ��ü ������ �� �� ����. �߻�Ŭ������ �ҿ����ϱ� �����̴�.
		Exercise5_11 p = new Exercise5_11(10);
		p.paint();
	}
}
