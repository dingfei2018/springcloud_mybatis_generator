<#if (p.bizPackage)?? && p.bizPackage !="">
	<#assign biz=".${p.bizPackage}"/>
<#else>
	<#assign biz=""/>
</#if>
package ${p.basePackage}.service${biz};

import java.util.List;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ${p.basePackage}.entity${biz}.${p.className};
import ${p.basePackage}.service${biz}.${p.className}Service;



/**
 *  自动生成测试文件
 *  <b>作者：</b>dingfei<br>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml","classpath:spring-mybatis.xml"})  
public class ${p.className}ServiceTest {

	@Resource
	private ${p.className}Service ${p.lowerName}Service; 
	
	//@Test
	public void testFindAll(){
		List<${p.className}> lists = ${p.lowerName}Service.findAll();
		System.out.println(lists.size());
	}
	
	
	//@Test
	public void testSelectByPrimaryKey(){
		${p.className} vo = ${p.lowerName}Service.selectByPrimaryKey(1);
		System.out.println(vo);
	}
	
	//@Test
	public void testDeleteByPrimaryKey(){
		${p.lowerName}Service.deleteByPrimaryKey(2);
	}
	
	@Test
	public void testInsert(){
		${p.className} po = new ${p.className}();
		//具体对象属性输入
		${p.lowerName}Service.insert(po);
	}
	
	//@Test
	public void testInsertSelective(){
		${p.className} po = new ${p.className}();
		//具体对象属性输入
		${p.lowerName}Service.insert(po);
	}
	
	//@Test
	public void testUpdateByPrimaryKeySelective(){
		${p.className} po = ${p.lowerName}Service.selectByPrimaryKey(1);
		//具体对象属性输入
		${p.lowerName}Service.updateByPrimaryKeySelective(po);
	}
	
	//@Test
	public void testUpdateByPrimaryKey(){
		${p.className} vo = ${p.lowerName}Service.selectByPrimaryKey(1);
		//具体对象属性输入
		${p.lowerName}Service.updateByPrimaryKey(vo);
	}
	
	//@Test
	public void testDeleteAll(){
		${p.lowerName}Service.deleteAll();
	}
}
