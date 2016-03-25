package com.ssh.dao;

import com.ssh.domain.Admin;

public interface AdminDao {  
  public Admin login(final String name,final String pass);  
}  

