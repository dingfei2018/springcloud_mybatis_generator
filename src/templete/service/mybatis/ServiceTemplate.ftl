<#if (p.bizPackage)?? && p.bizPackage !="">
    <#assign biz=".${p.bizPackage}"/>
<#else>
    <#assign biz=""/>
</#if>
package ${p.basePackage}.service${biz};

import ${p.basePackage}.entity${biz}.${p.className};
import BaseMybatisService;
import ${p.basePackage}.query${biz}.${p.className}Query;
import PageInfo;
import java.util.List;
/**
 * 描述:${p.code_name}-服务接口</br>
 * 功能：</b>${p.code_name}接口类</br>
 * 作者：</b>dingfei</br>
 * 时间:${.now}</br>
 */
public interface ${p.className}Service extends BaseMybatisService<${p.className},${p.pk_type}> {
	//分页数据
	List<${p.className}> findPageListBySQL(${p.className}Query vo);
}
