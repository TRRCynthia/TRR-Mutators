class SuperAATower extends Rx_Defence_AATower
    placeable;

DefaultProperties
{
	TeamID=0;
	DefenceControllerClass=class'SuperSSController'

    Seats(0)={(GunClass=class'SuperAATower_Weapon',
                GunSocket=(MuzzleFlashSocket_L,MuzzleFlashSocket_R),
                TurretControls=(TurretPitch,TurretRotate),
                GunPivotPoints=(GunYaw,GunPitch),
                CameraTag=CamView3P,
                CameraBaseOffset=(Z=-50),
                CameraOffset=-600,
                SeatIconPos=(X=0.5,Y=0.33),
                MuzzleFlashLightClass=class'Rx_Light_Tank_MuzzleFlash'
                )}


}