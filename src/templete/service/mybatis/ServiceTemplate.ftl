package ${p.basePackage}.service.${p.bizPackage};

import ${p.basePackage}.entity.${p.bizPackage}.${p.className};
import BaseMybatisService;
import ${p.basePackage}.query.${p.bizPackage}.${p.className}Query;
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
