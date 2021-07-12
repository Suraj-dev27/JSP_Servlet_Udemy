import java.util.HashMap;

import ssd.beans.User;

public class LoginService {

	HashMap<String, String> users = new HashMap<String, String>();

	public LoginService() {
		users.put("ssd123", "Suraj Dalvi");
		users.put("bh123", "Bhushan Belgaonkar");
		users.put("mdb123", "Malhar Belgaonkar");
	}

	public boolean authenticate(String userId, String password) {
		if (password == null || password.trim() == "") {
			return false;
		}
		return true;
	}

	public User getUserDetails(String userId) {
		User user = new User();
		user.setUserName(users.get(userId));
		user.setUserId(userId);
		return user;
	}
}
