package ${p.basePackage}.entity.${p.bizPackage};
import java.util.Date;
import java.lang.Integer;
import java.math.BigDecimal;
import com.dingfei.framework.util.BigDecimalSerialize;
import com.dingfei.framework.util.LongJsonSerializer
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;
import io.swagger.annotations.ApiModelProperty;
/**
 * 
 * 描述:${p.code_name}</br>
 * 功能：${p.code_name}实体表实体po</br>
 * 作者：dingfei</br>
 * 时间:${.now}</br>
 */
public class ${p.className} implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
<#list p.gci_columns as u>
 	<#if u.column_javatype == 'java.util.Date' && u.data_type == 'datetime'>
 	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
 	</#if>
 	<#if u.column_javatype == 'java.util.Date' && u.data_type == 'date'>
 	@DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
 	</#if>
   @ApiModelProperty(name = "${u.javaColumnFileNameCode}" , value = "${u.column_comment}")
   	private ${u.column_javatype} ${u.javaColumnFileNameCode};
</#list>
}

