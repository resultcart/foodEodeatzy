package kr.co.eodeatzy.login;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class NaverAuth extends DefaultApi20{
	protected NaverAuth() {

	}
	
    private static class InstanceHolder{
        private static final NaverAuth INSTANCE = new NaverAuth();
    }
	
    public static NaverAuth instance(){
        return InstanceHolder.INSTANCE;
    }    

	@Override
	public String getAccessTokenEndpoint() {
		return "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		return "https://nid.naver.com/oauth2.0/authorize";
	}
	

}
