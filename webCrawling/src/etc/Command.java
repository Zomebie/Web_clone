package etc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	public void exe(HttpServletRequest request, HttpServletResponse response);
}
