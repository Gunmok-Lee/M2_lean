package com.m2.M2_lean.config;

import javax.sql.DataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

@MapperScan("com.m2.m2_lean.dao")
public class MybatisConfig {

  @Bean
  public SqlSessionFactory sqlSessionFactory(
      DataSource dataSource, // DB 커넥션풀
      ApplicationContext appCtx // Spring IoC 컨테이너
      ) throws Exception {

    // Log4J2 기능 활성화시키기
    // => 로그 출력 형식은 .properties 파일이나 .xml 파일로 설정한다.
    //    LogFactory.useLog4J2Logging();

    SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
    sqlSessionFactoryBean.setDataSource(dataSource);
    sqlSessionFactoryBean.setTypeAliasesPackage("com.m2.M2_lean.vo");
    sqlSessionFactoryBean.setMapperLocations(
        appCtx.getResources("classpath:mapper/test.xml"));
    return sqlSessionFactoryBean.getObject();
  }
}


