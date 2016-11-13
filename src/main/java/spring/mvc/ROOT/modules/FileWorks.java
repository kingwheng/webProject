package spring.mvc.ROOT.modules;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileWorks {
	
	private String filesPath="C:\\Users\\Wheng\\Desktop\\MyFolder\\Spring_Works\\Spring17_Project\\src\\main\\webapp\\resources\\photos";

	public String uploadAndGetSysName(MultipartFile upfile){
		if(upfile.isEmpty()){
			return null;
		}
		String orgName=upfile.getOriginalFilename();
		String sysName=orgName;
		
		File uploadFile=new File(filesPath+"\\"+sysName);
		
		int addNum=1;
		while(uploadFile.exists()){
			String extName=sysName.substring(sysName.lastIndexOf("."));
			String fName=sysName.substring(0, sysName.lastIndexOf("."));
			if(fName.contains("_")){
				fName=fName.substring(0,fName.lastIndexOf("_"));
			}
			sysName=fName+"_"+addNum+extName;
			uploadFile=new File(filesPath+"\\"+sysName);
			addNum++;
		}
		
		try {
			byte[] byteArrays=upfile.getBytes();
			OutputStream os=new FileOutputStream(uploadFile);
			os.write(byteArrays);
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sysName;
	}

	public void download(String orgName, String sysName, HttpServletResponse response) {
		try {
			String encOrgName=URLEncoder.encode(orgName,"UTF-8");
			response.setHeader("Content-Disposition", "attachment;filename="+encOrgName);
			InputStream is=new FileInputStream(filesPath+"\\"+sysName);
			
			ServletOutputStream sos=response.getOutputStream();
			
			int data=0;
			while((data=is.read())!=-1){
				sos.write(data);
				sos.flush();
			}
			sos.close();
			is.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void delete(String sysName) {
		File delFile=new File(filesPath+"\\"+sysName);
		if(delFile.exists()){
			delFile.delete();
		}
	}
}
