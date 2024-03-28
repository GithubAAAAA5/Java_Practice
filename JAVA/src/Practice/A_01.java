package Practice;

//	int[] arrInt;
//	int arrInt2[];
//
//	double[] arrDouble;
//	String[] arrString;


/*
 *	정수타입 기본 자료형				초기값
 * 		byte[]					0
		char[]					'\u0000'(0과 같음)
		short[]					0
		int[]					0
		long[]					0ㅣ
 * 		
 * 	실수타입 기본 자료형
 * 		float[]					0.0F
 * 		double[]				0.0
 * 
 * 	논리타입 기본 자료형
 * 		boolean[]				false
 * 
 * 	참조자료형
 * 		클래스[]					null
	
 */
	
public class A_01 {

	public static void main(String[] args) {
		
		int[] arrInt;
		int arrInt2[] = null;
		
//		System.out.println(arrInt[0]);		// 에러 발생
		// 변수 arrInt 를 초기화 하지 않았다.
		
//		System.out.println(arrInt2[0]);		// 에러 발생하지 않음
		// 변수 arrInt2 는 null 이기때문에 출력할 값이 존재하지않음.
		
		int [] arrInt3 = new int[5];	// 길이가 5개인 배열 객체 생성
//			값 		0 0 0 0 0		각각에 값을 대입하지 않았기 때문에 초기값인 0 
//			순번		0 1 2 3 4 		0부터 4까지 5개 이를 index 라 함
		
		// 각 인덱스에 값 대입하기
		arrInt3[0] = 1;
		arrInt3[1] = 2;
		arrInt3[2] = 3;
		arrInt3[3] = 4;
		arrInt3[4] = 5;
		
//			값		1 2 3 4 5
//			순번		0 1 2 3 4
		
		
		String[] arrStr = new String[5];
		
		System.out.println(arrStr[0]);
		
//		String str = " ";
//		String str = null;   
//		이 두개의 코드는 완전히 다르다. " "는 빈문자열이 있는것이고, null은 값 자체가 존재하지 않는것이다.
		
		String[] arrStrw = {"홍길동", "이순신", "김유신"};
		// index[0] - 홍길동  index[1] - 이순신  index[2] - 김유신
		
	}
}