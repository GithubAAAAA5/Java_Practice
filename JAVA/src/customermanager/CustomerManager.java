package customermanager;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Scanner;


@SuppressWarnings("serial")
class Customer implements Serializable {
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
}


public class CustomerManager {
    private static final String FILE_NAME = "CustomerManager.txt";
    private static ArrayList<Customer> cusList = new ArrayList<>();

    public static void main(String[] args) {
    	
    	readCustomerData();

        Scanner scan = new Scanner(System.in);
        boolean program = true;

        while (program) {
        	printCustomer();
            int choice = scan.nextInt();
            scan.nextLine(); 

            switch (choice) {
                case 1:
                	insertCustomerData(scan);
                    break;
                case 2:
                	selectCustomerData(scan);
                    break;
                case 3:
                	updateCustomerData(scan);
                    break;
                case 4:
                	deleteCustomerData(scan);
                    break;
                case 5:
                	printAllCustomerData();
                    break;
                case 6:
                	writeCustomerData();
                    program = false;
                    break;
                default:
                    System.out.println("잘못된 입력입니다. 다시 시도해주세요.");
                    break;
            }
        }

        scan.close();
    }

    private static void printCustomer() {
        System.out.println("고객 관리 프로그램 메뉴:");
        System.out.println("1. 개인 정보 추가");
        System.out.println("2. 개인 정보 조회");
        System.out.println("3. 개인 정보 수정");
        System.out.println("4. 개인 정보 삭제");
        System.out.println("5. 전체 고객 정보 출력");
        System.out.println("6. 프로그램 종료");
        System.out.print("메뉴 선택 : ");
    }

    private static void insertCustomerData(Scanner scanner) {
        System.out.print("이름: ");
        String name = scanner.nextLine();

        if (Checkname(name) != null) {
            System.out.println("이미 존재하는 고객입니다.");
            return;
        }

        System.out.print("성별 (M/F): ");
        char gender = scanner.nextLine().charAt(0);

        System.out.print("이메일: ");
        String email = scanner.nextLine();

        if (findByEmail(email) != null) {
            System.out.println("이미 존재하는 이메일입니다.");
            return;
        }

        System.out.print("출생년도: ");
        int birthYear = scanner.nextInt();
        scanner.nextLine(); 

        Customer newCustomer = new Customer(name, gender, email, birthYear);
        cusList.add(newCustomer);
        System.out.println("고객 정보가 추가되었습니다.");
    }

    private static void selectCustomerData(Scanner scanner) {
        System.out.print("이름: ");
        String name = scanner.nextLine();

        Customer customer = Checkname(name);
        if (customer != null) {
            System.out.println("이름: " + customer.getName());
            System.out.println("성별: " + customer.getGender());
            System.out.println("이메일: " + customer.getEmail());
            System.out.println("출생년도: " + customer.getBirthYear());
        } else {
            System.out.println("해당 고객을 찾을 수 없습니다.");
        }
    }

    private static void updateCustomerData(Scanner scanner) {
        System.out.print("이름: ");
        String name = scanner.nextLine();

        Customer customer = Checkname(name);
        if (customer != null) {
            System.out.print("새 이름: ");
            customer.setName(scanner.nextLine());
            System.out.print("새 성별 (M/F): ");
            customer.setGender(scanner.nextLine().charAt(0));
            System.out.print("새 이메일: ");
            customer.setEmail(scanner.nextLine());
            System.out.print("새 출생년도: ");
            customer.setBirthYear(scanner.nextInt());
            scanner.nextLine();
            System.out.println("고객 정보가 수정되었습니다.");
        } else {
            System.out.println("해당 고객을 찾을 수 없습니다.");
        }
    }

    private static void deleteCustomerData(Scanner scanner) {
        System.out.print("이름: ");
        String name = scanner.nextLine();

        Customer customer = Checkname(name);
        if (customer != null) {
        	cusList.remove(customer);
            System.out.println("고객 정보가 삭제되었습니다.");
        } else {
            System.out.println("해당 고객을 찾을 수 없습니다.");
        }
    }

    private static void printAllCustomerData() {
        if (cusList.isEmpty()) {
            System.out.println("등록된 고객이 없습니다.");
        } else {
            System.out.println("전체 고객 정보:");
            for (Customer customer : cusList) {
                System.out.println("이름: " + customer.getName());
                System.out.println("성별: " + customer.getGender());
                System.out.println("이메일: " + customer.getEmail());
                System.out.println("출생년도: " + customer.getBirthYear());
                System.out.println();
            }
        }
    }

    @SuppressWarnings("unchecked")
	private static void readCustomerData() {
        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(FILE_NAME))) {
        	cusList = (ArrayList<Customer>) ois.readObject();
        } catch (IOException | ClassNotFoundException e) {

        }
    }

    private static void writeCustomerData() {
        try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(FILE_NAME))) {
            oos.writeObject(cusList);
            System.out.println("고객 정보가 파일에 저장되었습니다.");
        } catch (IOException e) {
            System.out.println("고객 정보 저장 중 오류가 발생했습니다.");
        }
    }

    private static Customer Checkname(String name) {
        for (Customer customer : cusList) {
            if (customer.getName().equals(name)) {
                return customer;
            }
        }
        return null;
    }

    private static Customer findByEmail(String email) {
        for (Customer customer : cusList) {
            if (customer.getEmail().equals(email)) {
                return customer;
            }
        }
        return null;
    }
}