package com.LuxeHotels.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Config {

	@Value("${zomatoApi.url}")
	public String zomatoApiUrl;
	
	@Value("${zomatoApi.userKey}")
	public String zomatoApiUserKey;
	
	
	@Value("${fbApp.apiId}")
	public String fbAPIId;
	
	
	@Value("${fbApp.secret}")
	public String fbSecret;
	
	
	@Value("${fbApp.redirectUrl}")
	public String fbRedirectUrl;


	public String getZomatoApiUrl() {
		return zomatoApiUrl;
	}


	public void setZomatoApiUrl(String zomatoApiUrl) {
		this.zomatoApiUrl = zomatoApiUrl;
	}


	public String getZomatoApiUserKey() {
		return zomatoApiUserKey;
	}


	public void setZomatoApiUserKey(String zomatoApiUserKey) {
		this.zomatoApiUserKey = zomatoApiUserKey;
	}


	public String getFbAPIId() {
		return fbAPIId;
	}


	public void setFbAPIId(String fbAPIId) {
		this.fbAPIId = fbAPIId;
	}


	public String getFbSecret() {
		return fbSecret;
	}


	public void setFbSecret(String fbSecret) {
		this.fbSecret = fbSecret;
	}


	public String getFbRedirectUrl() {
		return fbRedirectUrl;
	}


	public void setFbRedirectUrl(String fbRedirectUrl) {
		this.fbRedirectUrl = fbRedirectUrl;
	}
	
	
	
	
}