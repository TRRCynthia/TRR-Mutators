class SuperTurret extends Rx_Defence_Turret
    placeable;

DefaultProperties
{
    Seats(0)={(GunClass=class'SuperTurret_Weapon',
                GunSocket=(MuzzleFlashSocket),
                TurretControls=(TurretPitch,TurretRotate),
                GunPivotPoints=(TurretYaw,TurretPitch),
                CameraTag=CamView3P,
                CameraBaseOffset=(Z=-100),
                CameraOffset=-300,
                SeatIconPos=(X=0.5,Y=0.33),
                MuzzleFlashLightClass=class'Rx_Light_Tank_MuzzleFlash'
                )}
}