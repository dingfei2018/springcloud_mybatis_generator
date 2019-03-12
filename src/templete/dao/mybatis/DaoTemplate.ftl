<#if (p.bizPackage)?? && p.bizPackage !="">
    <#assign biz=".${p.bizPackage}"/>
<#else>
    <#assign biz=""/>
</#if>
package ${p.basePackage}.dao${biz};

import ${p.basePackage}.entity${biz}.${p.className};
import BaseMybatisDao;
import ${p.basePackage}.query${biz}.${p.className}Query;
import PageInfo;
import java.util.List;
import org.apache.ibatis.annotations.Param;
/**
 * 
 * ${p.code_name}dao接口</br>
 * 功能：</b>${p.className}Dao</br>
 * 作者：</b>dingfei</br>
 */
public interface ${p.className}Dao extends BaseMybatisDao<${p.className},${p.pk_type}> {
    /**
    * 查询列表并分页
    * @param vo
    * @return List<${p.className}>
    */
	List<${p.className}> findListByVo(@Param("vo") ${p.className}Query vo);

    /**
    * 分页数据
    * @param currentPage
    * @param pageSize
    * @param vo
    * @return List<${p.className}>
    */
    List<${p.className}> findPageListBySQL( @Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("vo") ${p.className}Query vo);
    /**
    * 分页属性
    * @param currentPage
    * @param pageSize
    * @param vo
    * @return PageInfo
    */
    PageInfo findPageInfoBySQL(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("vo") ${p.className}Query vo);
	
}
