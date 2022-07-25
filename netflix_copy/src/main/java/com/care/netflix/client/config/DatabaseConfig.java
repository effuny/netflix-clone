package com.care.netflix.client.config;

import java.io.IOException;
import java.util.Properties;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
/* @MapperScan(basePackages = {"com.care.netflix.client.login.dao"}) */	
@MapperScan(basePackages = {"com.care.netflix.client.dao", "com.care.netflix.client.login.dao", "com.care.netflix.admin.member.dao", "com.care.netflix.admin.ticket.dao", "com.care.netflix.admin.manager.dao", "com.care.netflix.admin.content.dao", "com.care.netflix.contents.dao"})
public class DatabaseConfig {
	
	
	@Bean
	public HikariDataSource dataSource() {
		HikariConfig hikariConfig =  new HikariConfig();
		hikariConfig.setDriverClassName("oracle.jdbc.OracleDriver");
		hikariConfig.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:xe");
		hikariConfig.setUsername("oracle");
		hikariConfig.setPassword("oracle");
		HikariDataSource dataSource = new HikariDataSource(hikariConfig);
		return dataSource;
	}
	
	@Bean
	public PlatformTransactionManager transactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}
	
	
	@Bean
	public SqlSessionFactoryBean sqlSessionFactory() throws IOException {
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(dataSource());
		PathMatchingResourcePatternResolver resovler = new PathMatchingResourcePatternResolver();
		sqlSessionFactory.setMapperLocations(resovler.getResources("/mappers/**/*Mapper.xml"));
		return sqlSessionFactory;
	}
	public Properties myBatisProperties() {
		Properties properties = new Properties();
		properties.put("lazyLoadingEnabled", "true");
		properties.put("jdbcTypeForNull", "NULL");
		return properties;
	}
	
	 @Bean
	 public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) throws Exception{
			/* sqlSessionFactory.getConfiguration().setMapUnderscoreToCamelCase(true); */
	     return new SqlSessionTemplate(sqlSessionFactory);
	 }
	 
	 
	

}
