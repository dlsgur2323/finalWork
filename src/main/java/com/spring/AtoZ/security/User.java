package com.spring.AtoZ.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.spring.AtoZ.vo.ClientVO;



public class User implements UserDetails{
	
	private ClientVO client;
	public User() {};
	public User(ClientVO client) {
		this.client = client;
	}
	private void setUser(ClientVO client) {
		this.client = client;


	}
		
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		
		roles.add(new SimpleGrantedAuthority(client.getType_code()));
		return roles;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return client.getCl_pwd();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return client.getCl_id();
	}

	@Override
	public boolean isAccountNonExpired() {	//기간제 계정의 경우 기간만료 여부
		// TODO 계정이 만료되지 않은 기준 True
		return true;
	}

	@Override
	public boolean isAccountNonLocked() { //휴먼계정 여부
		// TODO 계정이 잠겨 있지 않으면 True
		return client.getAct_yn() ==1;
	}

	@Override
	public boolean isCredentialsNonExpired() { //인증정보만료 여부
		// TODO 기간만료
		return true;
	}

	@Override
	public boolean isEnabled() { // 사용제제 여부
		// TODO 활성화/비활성화
		return client.getAct_yn() ==1;
	}
	
	public ClientVO getClientVO() {
		return this.client;
	}
	
}
