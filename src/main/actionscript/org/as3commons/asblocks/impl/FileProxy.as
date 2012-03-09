package org.as3commons.asblocks.impl
{
import org.as3commons.asblocks.dom.IFile;

public class FileProxy implements IFile
{
	// flash.filesystem.File
	protected var file:Object;
	
	public function getFile():Object
	{
		return file;
	}
	
	public function get name():String
	{
		return file.name;
	}
	
	public function get extension():String
	{
		return file.extension;
	}	
	
	public function get nativePath():String
	{
		return file.nativePath;
	}
	
	public function get isDirectory():Boolean
	{
		return file.isDirectory;
	}
	
	public function FileProxy(file:Object)
	{
		this.file = file;
	}
	
	//JPhillips:
	//The FileProxy class now creates FileProxy objects for any returned File objects
	public function getDirectoryListing():Array
	{
		var retVal:Array=[];
		var files:Array=file.getDirectoryListing();
		var length:uint=files.length;
		
		for(var i:uint=0;i<length;i++)
		{
			retVal[i]=new FileProxy(files[i]);
		}
		
		return retVal;
	}
}
}