package br.unicamp.ic.sed.mobilemedia.copyphoto.spec.req;

import br.unicamp.ic.sed.mobilemedia.main.spec.dt.IImageData;

public interface IFilesystem{

	public IImageData getImageInfo( String imageName ) ;
	public byte[] getBytesFromImageInfo(IImageData ii) ;
	public void addImageData( String imageName , IImageData imageData , String albumName ) ;
	
}