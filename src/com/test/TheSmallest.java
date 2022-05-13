package com.test;

public class TheSmallest {

	public static <T extends Comparable<T>> T min(T a, T b, T c) {
		T min = a;
		if(min.compareTo(b) > 0) {
			min = b;
		}
		
		if(min.compareTo(c) > 0) {
			min = c;
		}
		
		return min;
	}
}
