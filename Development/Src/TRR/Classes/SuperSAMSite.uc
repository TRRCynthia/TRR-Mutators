class SuperSAMSite extends Rx_Defence_SAMSite
    placeable;


DefaultProperties
{
	TeamID=1
	DefenceControllerClass=class'SuperSSController'


    Seats(0)={(GunClass=class'SuperSS_Weapon',
                GunSocket=(Fire_01,Fire_02,Fire_03,Fire_04,Fire_05,Fire_06),
                TurretControls=(TurretPitch,TurretRotate),
                GunPivotPoints=(Turret_Yaw,Turret_Pitch),
                CameraTag=CamView3P,
                CameraBaseOffset=(Z=-75),
                CameraOffset=-400,
                SeatIconPos=(X=0.5,Y=0.33),
                MuzzleFlashLightClass=class'Rx_Light_Tank_MuzzleFlash'
                )}

}