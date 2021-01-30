package com.m2.M2_lean.dao;

import org.apache.ibatis.session.SqlSession;

public class Dao {

  private SqlSession ss;

  private int test() {
    int res = -1;

    try {
      res = ss.selectOne("test.test");
    } catch (Exception e) {
      res = -1;
      System.out.println("test error : " + e.getMessage());
    }
    return res;
  }

}
