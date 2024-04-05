package customermanager;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Scanner;

public class Customer implements Serializable {  
   
   private String name;
   private char gender;
   private String email;
   private int birthYear;
 

   public Customer(String name, char gender, String email, int birthYear) { 
      this.name = name;
      this.gender = gender;
      this.email = email;
      this.birthYear = birthYear;
   }

   public String getName() {
      return name;
   }

   public char getGender() {
      return gender;
   }

   public String getEmail() {
      return email;
   }

   public int getBirthYear() {
      return birthYear;
   }

   public void setName(String name) {
      this.name = name;
   }

   public void setGender(char gender) {
      this.gender = gender;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public void setBirthYear(int birthYear) {
      this.birthYear = birthYear;
   }

   @Override
   public String toString() {
      return "Customer [name=" + name + ", gender=" + gender + ", email=" + email + 
            ", birthYear=" + birthYear + "]";
   }

   @Override
   public int hashCode() {
      return Objects.hash(birthYear, email, gender, name);
   }

  
public class CustomerManager {
	//파일명 설정
	private static final String FILENAME = "CustomerManager.txt";
	// 고객 정보를 저장하기 위한 ArrayList생성
	ArrayList<Customer> customers= new ArrayList<Customer>();
	
	// 생성자: 객체가 생성될 때 호출되며, 파일에서 고객 정보를 읽어와 customers ArrayList에 로드
	public CustomerManager() {	// load
		customers = new ArrayList<>();
		loadCustomers();
	}
	
	// 고객 추가 메서드: 전달된 고객 정보를 customers ArrayList에 추가한 후, 변경된 정보를 파일에 저장
    public void addCustomer(Customer customer) {	//add 추가하는데/ void를 사용해서 결과값을 출력하지는 않음. 새로운 정보 Customer를 customer배열에 추가
    	customers.add(customer);
    	saveCustomers();
    }
    
    // 고객 목록 출력 메서드: customers ArrayList에 있는 고객 정보를 모두 출력
    public void listCustomers() {
    	for(Customer customer : customers) {
    		System.out.println(customer.getName() + "/" + customer.getGender() + "/" + customer.getEmail() + "/" + customer.getBirthYear());
    	}
    	
    }
    
    // 고객 정보 저장 메서드: customers ArrayList에 있는 고객 정보를 파일에 저장
    public void saveCustomers() {
    	try {
			FileOutputStream fileOut = new FileOutputStream(FILENAME);
			ObjectOutputStream objectOut = new ObjectOutputStream(fileOut);
			objectOut.writeObject(customers);
			objectOut.close();
			fileOut.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
    
    // 고객 정보 불러오기 메서드: 파일에서 이전에 저장된 고객 정보를 읽어와 customers ArrayList에 로드
    public void loadCustomers() {
    	try {
			FileInputStream fileIn = new FileInputStream(FILENAME);
			ObjectInputStream objectIn = new ObjectInputStream(fileIn);
			customers = (ArrayList<Customer>) objectIn.readObject();
			objectIn.close();
			fileIn.close();
		} catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
    
    // 메인 메서드: 프로그램을 실행하고, 사용자에게 메뉴를 제공하여 원하는 작업을 선택할 수 있도록 함
    public static void main(String[] args) {
    	CustomerManager manager = new CustomerManager();
    	Scanner scanner = new Scanner(System.in);
    	
    	while (true) {
    		System.out.println("\n1. Add Customer\n2. List Customers\n3. EXIT");
    		System.out.print("Select an option : ");
    		int choice = scanner.nextInt();
    		scanner.nextLine();
    		
    		switch (choice) {
    			case 1:
    				System.out.print("Enter name : ");
    				String name = scanner.nextLine();
    				
    				System.out.print("Enter gender (M/F) : ");
    				char gender = scanner.next().charAt(0);
    				
    				System.out.print("Enter email : ");
    				String email = scanner.nextLine();
    				
    				System.out.print("Enter address : ");
    				int birthYear = scanner.nextInt();
    				
    				Customer newCustomer = new Customer(name, gender, email, birthYear);
    				manager.addCustomer(newCustomer);
    				System.out.println("Customer added successfully.");
    				break;
    			
    			case 2:
    				System.out.println("\n--- List of Customers ---");
    				manager.listCustomers();
    				break;
    				
    			case 3:
    				System.out.println("Exiting....");
    				System.exit(0);
    				
    			default:
    				System.out.println("Invalid choice. Please enter a valid option.");
    		}
    	}
    }
    
    
    
}
  

}