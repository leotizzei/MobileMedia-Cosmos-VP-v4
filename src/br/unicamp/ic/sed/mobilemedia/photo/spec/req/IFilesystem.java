package br.unicamp.ic.sed.mobilemedia.photo.spec.req;

import javax.microedition.lcdui.Image;

import br.unicamp.ic.sed.mobilemedia.main.spec.dt.IImageData;

public interface IFilesystem{
	

	public void addNewPhotoToAlbum ( String imageName, String imagePath, String albumName ); 
		
	public void deleteImage ( String imageName, String albumName ) ; 
			
	public Image getImageFromRecordStore ( String albumName, String imageName ) ; 
	
	public IImageData getImageInfo( String imageName ) ; 
	
	public IImageData[] getImages ( String albumName ) ;
		
	public boolean updateImageInfo(IImageData oldData, IImageData newData) ;

}