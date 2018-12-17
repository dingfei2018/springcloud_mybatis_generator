package ${p.basePackage}.dao.${p.bizPackage};

import ${p.basePackage}.entity.${p.bizPackage}.${p.className};
import BaseMybatisDao;
import ${p.basePackage}.query.${p.bizPackage}.${p.className}Query;
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
	//分页数据
	List<${p.className}> findPageListBySQL(@Param("vo") ${p.className}Query vo);
	
}
