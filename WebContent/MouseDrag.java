

import java.applet.*;
import java.awt.*;

public class MouseDrag extends Applet {
	String str;
 
  public void init() {
	  str=getParameter("nm");
  }
 
  public void start() {
  }
 
  public void stop() {
  }
 
  public void destroy() {
  }
 
  public void paint(Graphics g) {
    g.drawString("THANK YOU!!!!", 50, 50);
  }
}