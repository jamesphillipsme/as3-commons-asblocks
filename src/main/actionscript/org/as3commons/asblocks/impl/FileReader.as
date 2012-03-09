package org.as3commons.asblocks.impl
{
	import org.as3commons.asblocks.dom.IFile;

	public class FileReader implements IReader
	{
		public function FileReader(file:IFile)
		{
			_file=file;
		}
		
		public function read():String
		{
			if(!_data) _data=FileUtil.readFile(_file.nativePath);
			return _data;
		}
		
		//PRIVATE
		private var _file:IFile;
		private var _data:String;
	}
}