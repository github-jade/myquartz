package com.web.utils;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.google.common.base.Throwables;
import com.google.common.collect.Maps;
import com.google.common.io.Resources;

/**
 * properties文件操作
 * 
 * @author jiangyf
 */
public class PropertiesUtil {
	private static Map<String, String> map = null;
	private static Properties props = new Properties();

	/**
	 * 加载配置文件
	 * 
	 * @param propPath
	 *            文件路径
	 * @return void
	 */
	public static void loadByPropPath(String propPath) {
		try {
			InputStream is = new FileInputStream(propPath);
			// 字节流是无法读取中文的，所以采取reader把inputStream转换成reader用字符流来读取中文
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			props.load(br);
			br.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 加载配置文件
	 * 
	 * @param propName
	 *            文件名
	 * @return void
	 */
	public static void loadByPropName(String propName) {
		try {
			InputStream in = ClassLoader.class.getResourceAsStream(propName);
			props.load(in);
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 读取属性文件中相应键的值
	 * 
	 * @param key
	 *            主键
	 * @return String
	 */
	public static String getKeyValue(String key) {
		return props.getProperty(key);
	}

	/**
	 * 根据主键key读取主键的值value
	 * 
	 * @param propPath
	 *            属性文件路径
	 * @param key
	 *            键名
	 */
	public static String getKeyValue(String propPath, String key) {
		try {
			InputStream in = new BufferedInputStream(new FileInputStream(
					propPath));
			props.load(in);
			in.close();
			return props.getProperty(key);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 获取配置文件信息
	 * 
	 * @param propName
	 * @return Map<String, String>
	 */
	public static Map<String, String> readProperties(String propName) {
		Properties properties = new Properties();
		URL resource = Resources.getResource(propName);
		try {
			InputStreamReader isr = new InputStreamReader(
					resource.openStream(), "UTF-8");
			properties.load(isr);
			isr.close();
		} catch (Exception e) {
			throw Throwables.propagate(e);
		}
		return Maps.fromProperties(properties);
	}

	/**
	 * 更新properties文件的键值对 如果该主键已经存在，更新该主键的值；如果该主键不存在，则插入一对键值。
	 * 
	 * @param map
	 *            键值对
	 */
	public static void writeProperties(Map<String, String> map, String propPath) {
		try {
			// 调用 Hashtable 的方法 put，使用 getProperty 方法提供并行性。
			// 强制要求为属性的键和值使用字符串。返回值是 Hashtable 调用 put 的结果。
			OutputStream fos = new FileOutputStream(propPath);
			for (Map.Entry<String, String> entry : map.entrySet()) {
				props.setProperty(entry.getKey(), entry.getValue());
			}
			// 以适合使用 load 方法加载到 Properties 表中的格式，
			// 将此 Properties 表中的属性列表（键和元素对）写入输出流
			props.store(fos, "");
			fos.close();

		} catch (IOException e) {
			System.err.println("属性文件更新错误");
		}
	}

	/**
	 * 更新properties文件的键值对 如果该主键已经存在，更新该主键的值；如果该主键不存在，则插入一对键值。
	 * 
	 * @param propPath
	 *            属性文件路径
	 * @param map
	 *            键值对
	 */
	public static void writeProperties(String propPath, Map<String, String> map) {
		try {
			// 调用 Hashtable 的方法 put，使用 getProperty 方法提供并行性。
			// 强制要求为属性的键和值使用字符串。返回值是 Hashtable 调用 put 的结果。
			loadByPropPath(propPath);
			OutputStream fos = new FileOutputStream(propPath);
			for (Map.Entry<String, String> entry : map.entrySet()) {
				props.setProperty(entry.getKey(), entry.getValue());
			}
			// 以适合使用 load 方法加载到 Properties 表中的格式，
			// 将此 Properties 表中的属性列表（键和元素对）写入输出流
			props.store(fos, "");
			fos.close();
		} catch (IOException e) {
			System.err.println("属性文件更新错误");
		}
	}

	/**
	 * 获取配置文件信息
	 * 
	 * @param propName
	 * @return Map<String, String>
	 */
	public static Map<String, String> propertiesToMap(String propName) {
		InputStream is = PropertiesUtil.class.getClassLoader()
				.getResourceAsStream(propName);
		Properties props = new Properties();
		if (map == null) {
			map = new HashMap<String, String>();
		}
		try {
			props.load(is);
			Enumeration<Object> en = props.keys();
			while (en.hasMoreElements()) {
				String key = en.nextElement().toString();
				String val = props.getProperty(key);
				map.put(key, val);
			}
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}

	/**
	 * 获取配置文件信息
	 * 
	 * @param popName
	 * @param hashMap
	 * @return Map<String, String>
	 */
	public static Map<String, String> propertiesToMap(String propName,
			Map<String, String> hashMap) {
		map = hashMap;
		return readProperties(propName);
	}

//	public static void main(String[] args) {
//		Map<String, String> map2 = new HashMap<String, String>();
//		map2.put("key1", "value1");
//		map2.put("key2", "value2");
//		writeProperties(map2);
//	}

}
