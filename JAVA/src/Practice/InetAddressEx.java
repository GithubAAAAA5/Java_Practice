package Practice;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class InetAddressEx {
	
	//네트워크
	
	// 클래스 
	// InetAddress 
	
	// 메서드
	// getAllbyName(), getByAddress(), getByName(), getLocalHost()
	
	
	public static void main(String[] args) {
		try {
			InetAddress ip = InetAddress.getByName("www.google.co.kr");
			
			System.out.println("hostname : " + ip.getHostName());
			
			System.out.println("ip : " + ip.getHostAddress());
			
			InetAddress[] ips =
					InetAddress.getAllByName("www.google.co.kr");
			
			for (InetAddress i : ips) {
				System.out.println("ip 주소 : " + i);
			}
			
			byte[] ipAddr = ip.getAddress();
			
			for (byte b : ipAddr) {
				System.out.println(((b < 0) ? b + 256 : b) + "."); 
			}
			System.out.println();
			
			InetAddress local = InetAddress.getLocalHost();
			System.out.println("내 컴퓨터 ip : " + local);
			
			InetAddress ip2 = InetAddress.getByAddress(ips[0].getAddress());
			System.out.println(ips[0].getHostAddress() + " 주소 : " + ip2);
			
		} catch (UnknownHostException e) {
			System.out.println(e.getMessage());
		}
		
	}

}
