package ch5;

public class Computer extends Calculator {
	String name;
	double areaCircle(double r) {
		System.out.println("Calculator��ü�� areaCircle()����");
		return Math.PI * r * r;
	}
}
