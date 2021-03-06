package com.web.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.web.config.BizExpDictionary;
import com.web.exception.BizException;

public class FileUtil {
	private static Logger logger = Logger.getLogger(FileUtil.class);

	public static final String REALNAME = "realName";
	public static final String STORENAME = "storeName";
	public static final String SAVEDNAME = "savedName";
	public static final String CONTENTTYPE = "contentType";
	public static final String CREATETIME = "createTime";

	/**
	 * 上传文件
	 * 
	 * @param request
	 *            http请求
	 * @param uploadDir
	 *            上传文件的保存路径
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	public static List<Map<String, Object>> upload(HttpServletRequest request,
			String uploadDir) {
		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
		// 将HttpServletRequest请求转为MultipartHttpServletRequest
		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;
		// 取出封装在MultipartHttpServletRequest中的文件映射
		Map<String, MultipartFile> fileMap = mRequest.getFileMap();

		// 检查上传文件的保存路径是否存在，不存在则创建
		checkFilePath(uploadDir);

		// 将map转换为Iterator便于操作
		Iterator<Map.Entry<String, MultipartFile>> it = fileMap.entrySet()
				.iterator();
		while (it.hasNext()) {
			// 从Iterator中取出一个实体
			Map.Entry<String, MultipartFile> entry = it.next();
			// 从实体中获取File
			MultipartFile mFile = entry.getValue();
			if (mFile.isEmpty()) {
				continue;
			}
			result.add(saveFile(mFile, uploadDir));
		}
		return result;
	}

	/**
	 * 写入多个文件到指定文件路径
	 * 
	 * @param files
	 * @param uploadDir
	 * @return List<Map<String,Object>>
	 */
	public static List<Map<String, Object>> saveFiles(MultipartFile[] files,
			String uploadDir) {
		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
		// 检查上传文件的保存路径是否存在，不存在则创建
		checkFilePath(uploadDir);
		for (MultipartFile mFile : files) {
			result.add(saveFile(mFile, uploadDir));
		}
		return result;
	}

	/**
	 * 检查文件路径是否存在，不存在则创建
	 * 
	 * @param filePath
	 */
	public static void checkFilePath(String filePath) {
		// 如果文件夹不存在则创建文件夹
		File file = new File(filePath);
		if (!file.exists()) {
			// 区别mkdir(),mkdirs()为循环创建
			file.mkdirs();
		}
	}

	/**
	 * 写入文件到指定文件路径
	 * 
	 * @param mFile
	 * @param uploadDir
	 * @return Map<String,Object>
	 */
	public static Map<String, Object> saveFile(MultipartFile mFile,
			String uploadDir) {
		// 获取文件原始名
		String fileName = mFile.getOriginalFilename();
		// 对文件进行重命名
		String storeName = rename(fileName);

		String savedName = uploadDir + storeName;
		FileOutputStream outputStream;
		try {
			outputStream = new FileOutputStream(savedName);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			logger.error(BizExpDictionary.FILEUPLOADERROR + "\n"
					+ e.getStackTrace());
			throw new BizException(BizExpDictionary.FILEUPLOADERROR);
		}

		// 保存文件到系统
		try {
			FileCopyUtils.copy(mFile.getInputStream(), outputStream);
		} catch (IOException e) {
			e.printStackTrace();
			logger.error(BizExpDictionary.FILEUPLOADERROR + "\n"
					+ e.getStackTrace());
			throw new BizException(BizExpDictionary.FILEUPLOADERROR);
		}

		Map<String, Object> map = new HashMap<String, Object>();
		// 固定参数值对
		map.put(FileUtil.REALNAME, fileName);
		map.put(FileUtil.STORENAME, storeName);
		map.put(FileUtil.SAVEDNAME, savedName);
		// octet-stream 代表任意的二进制数据传输
		map.put(FileUtil.CONTENTTYPE, "application/octet-stream");
		map.put(FileUtil.CREATETIME, new Date());

		return map;
	}

	/**
	 * 下载文件
	 * 
	 * @param request
	 *            http请求
	 * @param response
	 *            http响应
	 * @param filePath
	 *            下载文件路径
	 * @param realName
	 *            原文件名
	 * @throws Exception
	 */
	public static void download(HttpServletRequest request,
			HttpServletResponse response, String filePath, String realName)
			throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;

		long fileLength = new File(filePath).length();

		response.setContentType("application/octet-stream");
		response.setHeader("Content-disposition", "attachment; filename="
				+ new String(realName.getBytes("utf-8"), "ISO8859-1"));
		response.setHeader("Content-Length", String.valueOf(fileLength));

		bis = new BufferedInputStream(new FileInputStream(filePath));
		bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buff = new byte[2048];
		int bytesRead;
		while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
			bos.write(buff, 0, bytesRead);
		}
		bis.close();
		bos.close();
	}

	/**
	 * 删除单个文件
	 * 
	 * @param fileName
	 *            文件路径
	 * @return boolean
	 */
	public static boolean deleteFile(String fileName) {
		File file = new File(fileName);
		// "删除单个文件"+name+"成功！"
		if (file.isFile() && file.exists()) {
			file.delete();
			return true;
		}
		return false;
	}

	/**
	 * 将上传的文件进行重命名
	 * 
	 * @param name
	 *            文件名
	 * @return String 重命名后的文件名
	 */
	private static String rename(String name) {
		Long now = Long.parseLong(new SimpleDateFormat("yyyyMMddHHmmss")
				.format(new Date()));
		Long random = (long) (Math.random() * now);
		String fileName = now + "-" + random;
		if (name.indexOf(".") != -1) {
			fileName += name.substring(name.lastIndexOf("."));
		}
		return fileName;
	}

}