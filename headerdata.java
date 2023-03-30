import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class headerdata extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        Enumeration e = request.getHeaderNames();
        String resp = "{";
        while (e.hasMoreElements()) {
            String name = (String)e.nextElement();
            String value = request.getHeader(name);
            resp += ("\"" + name  + "\"" + ":" + "\""+value + "\"" + ",");
        }
        resp += "}";
        StringBuffer sb = new StringBuffer(resp);
        sb.deleteCharAt(sb.length()-2);
        out.print(sb);
        out.flush();
    }
}