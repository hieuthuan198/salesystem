package tester;

import entitis.Account;
import model.AccountModel;

public class Test {

	public static void main(String[] args) {
		AccountModel accountModel = new AccountModel();
		Account ac = accountModel.Login("tienw", "tien");
		if (ac.getUsername() != null) {
			System.out.println("thanh cong"+ ac.getUsername());
		}else {System.out.println("that bai");}

	}

}
