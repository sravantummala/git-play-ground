package com.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

//With out using methods ..............Model@1

/*
public class Filehand {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub

		File file=new File("D:\\sample.txt");
		
		try {
			FileOutputStream out=new FileOutputStream(file);
			String s="This is text file";
			byte[] b=s.getBytes();
			
			out.write(b);
			out.close();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		FileInputStream input=new FileInputStream(file);
	int a=0;
		while((a=input.read())!=-1){
			                              //we can also use forloop instead
			System.out.print((char)a);
		}
		
	}

}


*/



//Using Methods ...............Model @2


public class Filehand {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub

		File file=new File("D:\\sampledata.txt");
		
		Filehand f=new Filehand();
		f.outputmethod(file);
		f.inputmethod(file);
		
		
	}

		public void outputmethod(File file) throws IOException{
		
		try {
			FileOutputStream out=new FileOutputStream(file);
			String s="This is text file";
			byte[] b=s.getBytes();
			
			out.write(b);
			out.close();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}
		
		
		public void inputmethod(File file) throws FileNotFoundException{
			
		FileInputStream input=new FileInputStream(file);
	int a=0;
		try {
			while((a=input.read())!=-1){
				
				System.out.print((char)a);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}



