package com.dingfei.framework.core.autocode;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dingfei.framework.common.util.FileTools;
import com.dingfei.framework.core.commom.CodeCfg;
import com.dingfei.framework.core.commom.SpringCfg;

import freemarker.template.TemplateException;

/**   
 * 类名称：DemoCode   </br>
 * 类描述：SSM生成器入口程序   </br>
 * 创建人：fangjian </br>
 * 创建时间：2016年1月18日 上午9:49:13   </br>
 * @version  0.1  </br>
 */
public class DemoCode {
	public static final String outputPath = "D:\\generator-output\\gci_test";
	public static void main(String[] args) throws IOException, SQLException, TemplateException {
		List<CodeCfg> list = new ArrayList<CodeCfg>();
		list.add(simpleCodeCfg("物流网点","aflc_point_network"));/*
		list.add(simpleCodeCfg("专线价格","aflc_transport_range_price"));
		list.add(simpleCodeCfg("用户收藏","aflc_user_collect"));
		list.add(simpleCodeCfg("评论库","aflc_vest_evaluation"));
		list.add(simpleCodeCfg("地址库","aflc_address_lib"));
		list.add(simpleCodeCfg("省份","aflc_common_province"));
		list.add(simpleCodeCfg("城市","aflc_common_city"));
		list.add(simpleCodeCfg("地区","aflc_common_area"));
		list.add(simpleCodeCfg("城市GDP等级","aflc_range_citygdp"));
		list.add(simpleCodeCfg("城市GDP系数","aflc_range_common_gdp"));
		list.add(simpleCodeCfg("货物轻重系数","aflc_range_common_goodtype"));
		list.add(simpleCodeCfg("公里系数","aflc_range_common_mileage"));
		list.add(simpleCodeCfg("淡旺季月份","aflc_range_common_month"));
		list.add(simpleCodeCfg("专线配置参数","aflc_range_genconfig"));
		list.add(simpleCodeCfg("城市淡旺季","aflc_range_month"));*/

		for (CodeCfg codeCfg : list) {
			generateCode(codeCfg);
		}

		//打开文件
		Runtime.getRuntime().exec("explorer "+outputPath);
	}

	private static CodeCfg simpleCodeCfg(String codeName,String tableName){
		CodeCfg codeCfg = new CodeCfg();
		codeCfg.setCode_name(codeName);
		codeCfg.setTable_name(tableName);
		return codeCfg;
	}

	private static void generateCode(CodeCfg cfg) throws TemplateException, SQLException, IOException {
		//基础包
		cfg.setBasePackage("com.anfachina");
		//模块包,同一模块这个地方不需要修改,，比如系统管理模块，设备管理模块
		cfg.setBizPackage(null);
		//mvc:com.jiesai.framework.controller.iemsuser;
		//要生成的表名称
		//cfg.setTable_name("aflc_logistics_company");
		//表中文名称
		//cfg.setCode_name("物流公司");
		//在硬盘路径下输出
		cfg.setOutput_path(outputPath);

		//1、可选
		//支持自定义实体,不配置则按照数据库名去掉下划线，全部转小写然后首字母大写，比如IMES_USER==>Iemsuser
		//cfg.setEntity_name("TproParme");
		//2、可选，生成其他框架组合，当前默认只支持springmvc+mybatis
		//cfg.setFramework_type(FrameworkType.ssh2);
		//3、可选，生成前可以选择清空一下目录
		FileTools.delDir(outputPath);
		//4、可选，是否生成spring单元测试文件，默认不生成
		cfg.setSpring_junit_test(SpringCfg.SRPING_TEST_DISABLED);

		cfg.setJspVsersion(SpringCfg.JSP_VERSION_QUIV3);
		//只生成rest api
		cfg.setRestApiController(true);
		//代码生成核心类
		CodeFactory.codeGenerate(cfg);

	}
}

