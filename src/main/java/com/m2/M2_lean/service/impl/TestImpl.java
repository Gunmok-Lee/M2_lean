package com.m2.M2_lean.service.impl;

import com.m2.M2_lean.dao.TestDao;
import com.m2.M2_lean.service.TestService;

public class TestImpl implements TestService{

  TestDao testDao;

  public TestImpl(TestDao testDao) {
    this.testDao = testDao;
  }

  @Override
  public int test(int no) throws Exception {
    testDao.test(no);
    return 0;
  }

}
