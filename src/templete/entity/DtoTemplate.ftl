package ${p.basePackage}.dto;
import java.util.Date;
import java.math.BigDecimal;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
/**
 * 
 * 描述:${p.code_name}进行前后端对接dto对象</br>
 * 功能：${p.code_name}实体表实体dto</br>
 * 作者：dingfei</br>
 * 时间:${.now}</br>
 */
@Data
public class ${p.className}Dto implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	<#list p.gci_columns as u>
 	/**
 	* ${u.column_comment}
 	*/
 	<#if u.column_javatype == 'java.util.Date' && u.data_type == 'datetime'>
 	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
 	</#if>
 	<#if u.column_javatype == 'java.util.Date' && u.data_type == 'date'>
 	@DateTimeFormat(pattern = "yyyy-MM-dd")
 	</#if>
   	private ${u.column_javatype} ${u.javaColumnFileNameCode};
</#list>

    
	
}

