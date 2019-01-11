<#if (p.bizPackage)?? && p.bizPackage !="">
	<#assign biz=".${p.bizPackage}"/>
<#else>
	<#assign biz=""/>
</#if>
package ${p.basePackage}.query.${biz};
import java.util.Date;
import java.math.BigDecimal;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
/**
 * 描述:${p.code_name}</br>
 * 功能：</b>${p.code_name}实体表查询专属实体vo</br>
 * 作者：</b>dingfei</br>
 * 时间:${.now}</br>
 */
@Data
public class ${p.className}Query implements java.io.Serializable{
 	
 	private static final long serialVersionUID = 1L;
 <#list p.gci_columns as u>
 	public static final String ALIAS_${u.javaColumnFileNameCode} = "${u.column_comment}";
 </#list>
<#list p.gci_columns as u>
 	/**
 	* ${u.column_comment}
 	*/
 	<#if u.column_javatype == 'java.util.Date'>
 	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
 	</#if>
   	private ${u.column_javatype} ${u.javaColumnFileNameCode};
 </#list>
	
}
