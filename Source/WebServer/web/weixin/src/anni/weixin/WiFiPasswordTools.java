
package anni.weixin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServlet;

import anni.dao.UserDao;
import anni.domain.User;


public class WiFiPasswordTools extends HttpServlet {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 4299720059965601827L;
	
	private UserDao mUserDao = new UserDao();
	
	private SimpleDateFormat MMddHHmm_TIME = new SimpleDateFormat("MMddHHmm");

  	
	//生成数字和字母组合
  	public static String getNumString(int length) { //length表示生成字符串的长度
  	    String base = "0123456789";
  	    Random random = new Random();
  	    StringBuffer sb = new StringBuffer();
  	    for (int i = 0; i < length; i++) {
  	        int number = random.nextInt(base.length());
  	        sb.append(base.charAt(number));
  	    }
  	    return sb.toString();
  	 }
  	
  	//生成数字和字母组合
  	public static String getRandomString(int length) { //length表示生成字符串的长度
  	    String base = "abcdefghijklmnopqrstuvwxyz0123456789";
  	    Random random = new Random();
  	    StringBuffer sb = new StringBuffer();
  	    for (int i = 0; i < length; i++) {
  	        int number = random.nextInt(base.length());
  	        sb.append(base.charAt(number));
  	    }
  	    return sb.toString();
  	 }
  	
  	//判断密码是否有效
  	public int CheckPasswdGood(int nTime, String sPassword, int nOutTime)
  	{
  		//如果时间为0，不用判断超时
  		if(nTime == 0) {
  			return 0;
  		}
  		
  		//如果密码为“NULL”，也无效
  		if(sPassword.equalsIgnoreCase("NULL")) {
  			return 0;
  		}
  		
  		//系统当前时间
  		String sMMddHHmm_TIME = MMddHHmm_TIME.format(new Date());
  		int nowTime = Integer.parseInt(sMMddHHmm_TIME);
  		
  		//判断时间超时
  		int nGapTime = nowTime - nTime;
  		if(nGapTime == 0) {
  			return nOutTime;
  		}
  		else if(nGapTime > 0) {
  			return (nGapTime < nOutTime) ? nOutTime-nGapTime:0;
  		}
  		//如果相反应该是遇到了跨年的情况
  		else {
  			int n1 = nowTime - 1010001; //1月1日0点1分
  			int n2 = 12312359 - nTime; //12月31日23点59分
  			nGapTime = n1 + n2;
  			return (nGapTime < nOutTime) ? nOutTime-nGapTime:0;
  		}
  	}
  	
  	//生成密码
  	public boolean CreatPasswd(User mUser, int nOutTime)
  	{
  		//最少多少位
  		int nLenStart = 2;
  		//最多多少位
  		int nLenENd = 6;
  		//每个位数尝试多少次
  		int nCreateNum = 10;
  		
  		for(int i=nLenStart; i<nLenENd; i++) {
  			for(int l=0; l<nCreateNum; l++) {
  			//随机生成一个2位数的密码，只有数字
  	  			String tPassWord = getNumString(i);
  	  			try {
  	  				//查下数据库这个密码是否已经有人申请过
  	  				User mUser2 = mUserDao.get("wifi_passwd", tPassWord);
  	  				
  	  				//如果这个密码被别人申请过了
  	  				if(mUser2 != null) {
  	  					//看那个用户的密码是否已经过期
  	  					int nHaveTime = CheckPasswdGood(mUser2.getPassWordTime(), mUser2.getPassWord(), nOutTime);
  	  					//是过期就把他的密码干掉，给当前用户用
  	  					if(nHaveTime == 0) {
  	  						mUser2.setPassWord("NULL");
  	  						mUser2.setPassWordTime(0);
  	  						mUserDao.update(mUser2);
  	  					} else {
  	  						continue;
  	  					}
  	  				}
  	  				
  	  				mUser.setPassWord(tPassWord);
					String sMMddHHmm_TIME = MMddHHmm_TIME.format(new Date());
					mUser.setPassWordTime(Integer.parseInt(sMMddHHmm_TIME));
					mUserDao.update(mUser);
					return true;
					
  	  			} catch (Exception e) {
  	  				// TODO 自动生成的 catch 块
  	  				e.printStackTrace();
  	  			}
  			}
  		}
  		return false;
  	}
}