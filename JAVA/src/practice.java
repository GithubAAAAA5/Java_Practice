//import java.io.*;
//import java.util.*;
//
//// 고객 정보를 저장하는 Customer 클래스
//class Customer implements Serializable {
//    private String name;
//    private char gender;
//    private String email;
//    private int birthYear;
//
//    // 생성자
//    public Customer(String name, char gender, String email, int birthYear) {
//        this.name = name;
//        this.gender = gender;
//        this.email = email;
//        this.birthYear = birthYear;
//    }
//
//    // Getter와 Setter 메서드
//    public String getName() {
//        return name;
//    }
//
//    public char getGender() {
//        return gender;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public int getBirthYear() {
//        return birthYear;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public void setGender(char gender) {
//        this.gender = gender;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public void setBirthYear(int birthYear) {
//        this.birthYear = birthYear;
//    }
//}
//
//// 고객 관리 프로그램을 구현하는 CustomerManager 클래스
//public class CustomerManager {
//    private static final String FILE_NAME = "CustomerManager.txt";
//    private static ArrayList<Customer> customerList = new ArrayList<>();
//
//    public static void main(String[] args) {
//        // 프로그램 시작 시 파일에서 고객 정보 읽어오기
//        readCustomersFromFile();
//
//        Scanner scanner = new Scanner(System.in);
//        boolean running = true;
//
//        while (running) {
//            printMenu();
//            int choice = scanner.nextInt();
//            scanner.nextLine(); // 개행문자 처리
//
//            switch (choice) {
//                case 1:
//                    addCustomer(scanner);
//                    break;
//                case 2:
//                    searchCustomer(scanner);
//                    break;
//                case 3:
//                    modifyCustomer(scanner);
//                    break;
//                case 4:
//                    deleteCustomer(scanner);
//                    break;
//                case 5:
//                    printAllCustomers();
//                    break;
//                case 6:
//                    saveCustomersToFile();
//                    running = false;
//                    break;
//                default:
//                    System.out.println("잘못된 입력입니다. 다시 시도해주세요.");
//                    break;
//            }
//        }
//
//        scanner.close();
//    }
//
//    // 메뉴 출력
//    private static void printMenu() {
//        System.out.println("고객 관리 프로그램 메뉴:");
//        System.out.println("1. 고객 정보 추가");
//        System.out.println("2. 고객 정보 조회");
//        System.out.println("3. 고객 정보 수정");
//        System.out.println("4. 고객 정보 삭제");
//        System.out.println("5. 전체 고객 정보 출력");
//        System.out.println("6. 종료");
//        System.out.print("선택: ");
//    }
//
//    // 고객 정보 추가
//    private static void addCustomer(Scanner scanner) {
//        System.out.print("이름: ");
//        String name = scanner.nextLine();
//
//        // 이름 중복 체크
//        if (findCustomerByName(name) != null) {
//            System.out.println("이미 존재하는 고객입니다.");
//            return;
//        }
//
//        System.out.print("성별 (M/F): ");
//        char gender = scanner.nextLine().charAt(0);
//
//        System.out.print("이메일: ");
//        String email = scanner.nextLine();
//
//        // 이메일 중복 체크
//        if (findCustomerByEmail(email) != null) {
//            System.out.println("이미 존재하는 이메일입니다.");
//            return;
//        }
//
//        System.out.print("출생년도: ");
//        int birthYear = scanner.nextInt();
//        scanner.nextLine(); // 개행문자 처리
//
//        Customer newCustomer = new Customer(name, gender, email, birthYear);
//        customerList.add(newCustomer);
//        System.out.println("고객 정보가 추가되었습니다.");
//    }
//
//    // 고객 정보 조회
//    private static void searchCustomer(Scanner scanner) {
//        System.out.print("이름: ");
//        String name = scanner.nextLine();
//
//        Customer customer = findCustomerByName(name);
//        if (customer != null) {
//            System.out.println("이름: " + customer.getName());
//            System.out.println("성별: " + customer.getGender());
//            System.out.println("이메일: " + customer.getEmail());
//            System.out.println("출생년도: " + customer.getBirthYear());
//        } else {
//            System.out.println("해당 고객을 찾을 수 없습니다.");
//        }
//    }
//
//    // 고객 정보 수정
//    private static void modifyCustomer(Scanner scanner) {
//        System.out.print("이름: ");
//        String name = scanner.nextLine();
//
//        Customer customer = findCustomerByName(name);
//        if (customer != null) {
//            System.out.print("새 이름: ");
//            customer.setName(scanner.nextLine());
//            System.out.print("새 성별 (M/F): ");
//            customer.setGender(scanner.nextLine().charAt(0));
//            System.out.print("새 이메일: ");
//            customer.setEmail(scanner.nextLine());
//            System.out.print("새 출생년도: ");
//            customer.setBirthYear(scanner.nextInt());
//            scanner.nextLine(); // 개행문자 처리
//            System.out.println("고객 정보가 수정되었습니다.");
//        } else {
//            System.out.println("해당 고객을 찾을 수 없습니다.");
//        }
//    }
//
//    // 고객 정보 삭제
//    private static void deleteCustomer(Scanner scanner) {
//        System.out.print("이름: ");
//        String name = scanner.nextLine();
//
//        Customer customer = findCustomerByName(name);
//        if (customer != null) {
//            customerList.remove(customer);
//            System.out.println("고객 정보가 삭제되었습니다.");
//        } else {
//            System.out.println("해당 고객을 찾을 수 없습니다.");
//        }
//    }
//
//    // 전체 고객 정보 출력
//    private static void printAllCustomers() {
//        if (customerList.isEmpty()) {
//            System.out.println("등록된 고객이 없습니다.");
//        } else {
//            System.out.println("전체 고객 정보:");
//            for (Customer customer : customerList) {
//                System.out.println("이름: " + customer.getName());
//                System.out.println("성별: " + customer.getGender());
//                System.out.println("이메일: " + customer.getEmail());
//                System.out.println("출생년도: " + customer.getBirthYear());
//                System.out.println();
//            }
//        }
//    }
//
//    // 파일에서 고객 정보 읽어오기
//    private static void readCustomersFromFile() {
//        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(FILE_NAME))) {
//            customerList = (ArrayList<Customer>) ois.readObject();
//        } catch (IOException | ClassNotFoundException e) {
//            // 파일이 존재하지 않거나 읽기 실패 시 무시
//        }
//    }
//
//    // 고객 정보를 파일에 저장하기
//    private static void saveCustomersToFile() {
//        try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(FILE_NAME))) {
//            oos.writeObject(customerList);
//            System.out.println("고객 정보가 파일에 저장되었습니다.");
//        } catch (IOException e) {
//            System.out.println("고객 정보 저장 중 오류가 발생했습니다.");
//        }
//    }
//
//    // 이름으로 고객 찾기
//    private static Customer findCustomerByName(String name) {
//        for (Customer customer : customerList) {
//            if (customer.getName().equals(name)) {
//                return customer;
//            }
//        }
//        return null;
//    }
//
//    // 이메일로 고객 찾기
//    private static Customer findCustomerByEmail(String email) {
//        for (Customer customer : customerList) {
//            if (customer.getEmail().equals(email)) {
//                return customer;
//            }
//        }
//        return null;
//    }
//}