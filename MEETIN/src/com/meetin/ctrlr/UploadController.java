package com.meetin.ctrlr;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.meetin.data.uploadConfig;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 3037936321235616657L;
	
	public UploadController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String folder = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/")+1);
		String saveDirectory = uploadConfig.getSaveDir()+"/"+folder;
		int size = 5 * 1024 * 1024; // 파일 크기(5MB)

		File file = new File(saveDirectory);

		if (!file.exists()) {
			file.mkdirs();
		}

		MultipartRequest multi = null;
		StringBuilder sb = new StringBuilder();

		try {
			multi = new MultipartRequest(request,saveDirectory,size,"UTF-8",new DefaultFileRenamePolicy());	
			Enumeration formNames = multi.getFileNames();
			sb.append("[");
			while(formNames.hasMoreElements()) {
				String fileInput = (String) formNames.nextElement();
				sb.append("{");
				//sb.append("\"oriFilepath\" : \"" +saveDirectory+multi.getFilesystemName(fileInput)+ "\",");
				sb.append("\"oriFilename\" : \"" + multi.getOriginalFileName(fileInput) + "\",");
				sb.append("\"sysFilename\" : \"" + multi.getFilesystemName(fileInput) + "\"");
				sb.append("}");
				if(formNames.hasMoreElements()) {
					sb.append(",");
				}
			}
			sb.append("]");
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.getWriter().print(sb.toString());
	}
}
