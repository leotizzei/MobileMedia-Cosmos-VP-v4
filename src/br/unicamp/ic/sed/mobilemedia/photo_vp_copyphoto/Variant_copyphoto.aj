package br.unicamp.ic.sed.mobilemedia.photo_vp_copyphoto;

import javax.microedition.lcdui.Command;
import javax.microedition.lcdui.Canvas;

import br.unicamp.ic.sed.mobilemedia.photo.aspects.XPIPhotoController;
import br.unicamp.ic.sed.mobilemedia.photo.aspects.XPIPhoto;
import br.unicamp.ic.sed.mobilemedia.photo.aspects.XPIPhotoViewScreen;

public privileged aspect Variant_copyphoto {

	private CopyphotoStub copyphoto = new CopyphotoStub(); 
	
	public pointcut postCommand(Command c):XPIPhoto.postCommand(c);
		
	boolean around( Command c ) : postCommand( c ){
		if( !copyphoto.postCommand( c ) )
			return proceed( c );
		return true;
	}
	
	public pointcut constructingPhotoViewScreen(Canvas photoViewScreen):
		XPIPhotoViewScreen.constructingPhotoViewScreen(photoViewScreen);
	
	after( Canvas photoViewScreen ) :  constructingPhotoViewScreen(photoViewScreen){
		copyphoto.addCopyCommand( photoViewScreen );
	}
	
	public pointcut showImage( String imageName ):XPIPhotoController.showImage( imageName );
	
	after( String imageName ) : showImage( imageName ){
		copyphoto.showImage( imageName );
	}
}
